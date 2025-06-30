import mysql.connector
from mysql.connector import Error
from datetime import datetime


def get_database_connection():
    """
    Create a connection to the MySQL database.

    Returns:
        mysql.connector.connection.MySQLConnection: Database connection object if successful
        None: If connection fails
    """
    try:
        connection = mysql.connector.connect(
            host='localhost',  # Local instance
            port=3306,  # Default MySQL port
            user='root',  # Default admin username
            password='root',  # Replace with your actual password
            database='alex_company_sales'  # Your database name
        )

        if connection.is_connected():
            db_info = connection.get_server_info()
            print(f"Connected to MySQL Server version {db_info}")
            return connection

    except Error as e:
        print(f"Error connecting to MySQL: {e}")
        return None


# Read-only Queries
def get_pcs_by_price_and_ram(connection, max_price=None, min_ram=None):
    """
    Find PCs within specified price and RAM constraints.

    Args:
        connection: MySQL database connection
        max_price (float): Optional maximum price limit. If None, will prompt user
        min_ram (int): Optional minimum RAM requirement. If None, will prompt user

    Returns:
        List of tuples containing matching PC records
    """
    if max_price is None:
        max_price = float(input("Enter maximum price ($): "))
    if min_ram is None:
        min_ram = int(input("Enter minimum RAM (GB): "))

    cursor = connection.cursor()
    try:
        query = """
        SELECT Brand, Model, Price, RAM 
        FROM PCs 
        WHERE Price < %s AND RAM > %s
        """
        cursor.execute(query, (max_price, min_ram))
        results = cursor.fetchall()
        return results
    except Error as e:
        print(f"Error executing query: {e}")
        return []
    finally:
        cursor.close()


def get_customer_order_summary(connection):
    """
    Display customer details along with their total order amounts and number of orders.

    Args:
        connection: MySQL database connection

    Returns:
        List of tuples containing customer order summaries
    """
    cursor = connection.cursor()
    try:
        query = """
        SELECT 
            c.FirstName,
            c.LastName,
            COUNT(o.OrderID) as NumberOfOrders,
            SUM(o.TotalAmount) as TotalSpent
        FROM Customers c
        JOIN Orders o ON c.CustomerID = o.CustomerID
        GROUP BY c.CustomerID, c.FirstName, c.LastName
        """
        cursor.execute(query)
        results = cursor.fetchall()
        return results
    except Error as e:
        print(f"Error executing query: {e}")
        return []
    finally:
        cursor.close()


def get_pcs_above_price_threshold(connection, threshold_percentage=None):
    """
    Find PCs with prices above a certain percentage of the average price.

    Args:
        connection: MySQL database connection
        threshold_percentage (float): Optional percentage above average. If None, will prompt user

    Returns:
        List of tuples containing PC records above threshold
    """
    if threshold_percentage is None:
        threshold_percentage = float(input("Enter threshold percentage (e.g., 100 for average): "))

    cursor = connection.cursor()
    try:
        query = """
        SELECT Brand, Model, Price
        FROM PCs
        WHERE Price > (
            SELECT AVG(Price) * %s / 100
            FROM PCs
        )
        """
        cursor.execute(query, (threshold_percentage,))
        results = cursor.fetchall()
        return results
    except Error as e:
        print(f"Error executing query: {e}")
        return []
    finally:
        cursor.close()


def get_inventory_value_by_brand(connection):
    """
    Calculate total inventory value grouped by PC brand.

    Args:
        connection: MySQL database connection

    Returns:
        List of tuples containing brand and total inventory value
    """
    cursor = connection.cursor()
    try:
        query = """
        SELECT 
            p.Brand,
            SUM(p.Price * i.Quantity) as TotalInventoryValue
        FROM PCs p
        JOIN Inventory i ON p.PCID = i.PCID
        GROUP BY p.Brand
        """
        cursor.execute(query)
        results = cursor.fetchall()
        return results
    except Error as e:
        print(f"Error executing query: {e}")
        return []
    finally:
        cursor.close()


# Modification Queries
def add_new_customer(connection, customer_data=None):
    """
    Add a new customer to the database.

    Args:
        connection: MySQL database connection
        customer_data (tuple): Optional tuple containing customer information.
            If None, will prompt user for input

    Returns:
        True if successful, False otherwise
    """
    if customer_data is None:
        customer_id = int(input("Enter CustomerID: "))
        first_name = input("Enter First Name: ")
        last_name = input("Enter Last Name: ")
        email = input("Enter Email: ")
        phone = input("Enter Phone: ")
        address = input("Enter Address: ")
        city = input("Enter City: ")
        state = input("Enter State (2 letters): ")
        zip_code = input("Enter ZIP: ")
        customer_data = (customer_id, first_name, last_name, email, phone,
                         address, city, state, zip_code)

    cursor = connection.cursor()
    try:
        query = """
        INSERT INTO Customers 
        (CustomerID, FirstName, LastName, Email, Phone, Address, City, State, Zip)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
        """
        cursor.execute(query, customer_data)
        connection.commit()
        print("Customer added successfully!")
        return True
    except Error as err:
        print(f"Error: {err}")
        connection.rollback()
        return False
    finally:
        cursor.close()


def delete_old_orders(connection, date_threshold=None, amount_threshold=None):
    """
    Delete orders older than specified date with amount less than threshold.

    Args:
        connection: MySQL database connection
        date_threshold (str): Optional date string (YYYY-MM-DD). If None, will prompt user
        amount_threshold (float): Optional amount threshold. If None, will prompt user

    Returns:
        Number of orders deleted
    """
    if date_threshold is None:
        date_str = input("Enter date threshold (YYYY-MM-DD): ")
        date_threshold = datetime.strptime(date_str, '%Y-%m-%d').date()
    if amount_threshold is None:
        amount_threshold = float(input("Enter amount threshold ($): "))

    cursor = connection.cursor()
    try:
        query = """
        DELETE FROM Orders 
        WHERE OrderDate < %s 
        AND TotalAmount < %s
        """
        cursor.execute(query, (date_threshold, amount_threshold))
        deleted_count = cursor.rowcount
        connection.commit()
        print(f"Successfully deleted {deleted_count} orders")
        return deleted_count
    except Error as err:
        print(f"Error: {err}")
        connection.rollback()
        return 0
    finally:
        cursor.close()


def update_order_id(connection, old_id=None, new_id=None):
    """
    Update an order ID and demonstrate CASCADE effect.

    Args:
        connection: MySQL database connection
        old_id (int): Optional current order ID. If None, will prompt user
        new_id (int): Optional new order ID. If None, will prompt user

    Returns:
        True if successful, False otherwise
    """
    if old_id is None:
        old_id = int(input("Enter current Order ID: "))
    if new_id is None:
        new_id = int(input("Enter new Order ID: "))

    cursor = connection.cursor()
    try:
        query = """
        UPDATE Orders
        SET OrderID = %s
        WHERE OrderID = %s
        """
        cursor.execute(query, (new_id, old_id))
        connection.commit()
        print(f"Successfully updated order ID from {old_id} to {new_id}")
        return True
    except Error as err:
        print(f"Error: {err}")
        connection.rollback()
        return False
    finally:
        cursor.close()


def delete_supplier(connection, supplier_id=None):
    """
    Delete a supplier and demonstrate CASCADE effect on SupplierInventory.

    Args:
        connection: MySQL database connection
        supplier_id (int): Optional supplier ID to delete. If None, will prompt user

    Returns:
        True if successful, False otherwise
    """
    if supplier_id is None:
        supplier_id = int(input("Enter Supplier ID to delete: "))

    cursor = connection.cursor()
    try:
        query = """
        DELETE FROM Suppliers
        WHERE SupplierID = %s
        """
        cursor.execute(query, (supplier_id,))
        connection.commit()
        print(f"Successfully deleted supplier {supplier_id} and all related inventory records")
        return True
    except Error as err:
        print(f"Error: {err}")
        connection.rollback()
        return False
    finally:
        cursor.close()


def display_menu():
    """Display the main menu of operations."""
    print("\n=== PC Sales Database Management System ===")
    print("1. Find PCs by price and RAM")
    print("2. View customer order summary")
    print("3. Find PCs above price threshold")
    print("4. View inventory value by brand")
    print("5. Add new customer")
    print("6. Delete old orders")
    print("7. Update order ID")
    print("8. Delete supplier")
    print("9. Exit")


def main():
    """
    Main function to run the database management system.
    """
    connection = get_database_connection()

    if connection is None:
        print("Failed to connect to database. Please check your connection parameters.")
        return

    try:
        while True:
            display_menu()
            choice = input("\nEnter your choice (1-9): ")

            if choice == '1':
                results = get_pcs_by_price_and_ram(connection)
                for pc in results:
                    print(f"Brand: {pc[0]}, Model: {pc[1]}, Price: ${pc[2]}, RAM: {pc[3]}GB")

            elif choice == '2':
                results = get_customer_order_summary(connection)
                for customer in results:
                    print(f"{customer[0]} {customer[1]}: {customer[2]} orders, Total: ${customer[3]:.2f}")

            elif choice == '3':
                results = get_pcs_above_price_threshold(connection)
                for pc in results:
                    print(f"Brand: {pc[0]}, Model: {pc[1]}, Price: ${pc[2]}")

            elif choice == '4':
                results = get_inventory_value_by_brand(connection)
                for brand in results:
                    print(f"Brand: {brand[0]}, Total Value: ${brand[1]:.2f}")

            elif choice == '5':
                add_new_customer(connection)

            elif choice == '6':
                delete_old_orders(connection)

            elif choice == '7':
                update_order_id(connection)

            elif choice == '8':
                delete_supplier(connection)

            elif choice == '9':
                print("Exiting program...")
                break

            else:
                print("Invalid choice. Please try again.")

    except Error as e:
        print(f"Error: {e}")

    finally:
        if connection.is_connected():
            connection.close()
            print("MySQL connection closed.")


if __name__ == "__main__":
    main()