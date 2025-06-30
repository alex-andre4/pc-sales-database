import pandas as pd
from faker import Faker

fake = Faker()

# Generate data for Customers table
customers_data = []
for i in range(100):
    customer = {
        'CustomerID': i+1,
        'FirstName': fake.first_name(),
        'LastName': fake.last_name(),
        'Email': fake.email(),
        'Phone': fake.phone_number(),
        'Address': fake.street_address(),
        'City': fake.city(),
        'State': fake.state_abbr(),
        'Zip': fake.zipcode()
    }
    customers_data.append(customer)

customers_df = pd.DataFrame(customers_data)
customers_df.to_excel('Customers.xlsx', index=False)

# Generate data for PCs table
pcs_data = []
for i in range(50):
    pc = {
        'PCID': i+1,
        'Brand': fake.company(),
        'Model': f"Model {i+1}",
        'Processor': fake.cpu_model(),
        'RAM': fake.random_int(min=8, max=64),
        'Storage': fake.random_int(min=256, max=2048),
        'GraphicsCard': fake.gpu_model(),
        'Price': fake.pyfloat(min_value=500, max_value=3000)
    }
    pcs_data.append(pc)

pcs_df = pd.DataFrame(pcs_data)
pcs_df.to_excel('PCs.xlsx', index=False)

# Generate data for Orders table
orders_data = []
for i in range(200):
    order = {
        'OrderID': i+1,
        'CustomerID': fake.random_int(min=1, max=100),
        'OrderDate': fake.date_between(start_date='-1y', end_date='today'),
        'TotalAmount': fake.pyfloat(min_value=500, max_value=10000)
    }
    orders_data.append(order)

orders_df = pd.DataFrame(orders_data)
orders_df.to_excel('Orders.xlsx', index=False)

# Generate data for OrderItems table
order_items_data = []
for i in range(500):
    order_item = {
        'OrderItemID': i+1,
        'OrderID': fake.random_int(min=1, max=200),
        'PCID': fake.random_int(min=1, max=50),
        'Quantity': fake.random_int(min=1, max=5)
    }
    order_items_data.append(order_item)

order_items_df = pd.DataFrame(order_items_data)
order_items_df.to_excel('OrderItems.xlsx', index=False)

# Generate data for Inventory table
inventory_data = []
for i in range(50):
    inventory = {
        'InventoryID': i+1,
        'PCID': i+1,
        'Quantity': fake.random_int(min=0, max=100)
    }
    inventory_data.append(inventory)

inventory_df = pd.DataFrame(inventory_data)
inventory_df.to_excel('Inventory.xlsx', index=False)

# Generate data for Suppliers table
suppliers_data = []
for i in range(20):
    supplier = {
        'SupplierID': i+1,
        'Name': fake.company(),
        'Email': fake.company_email(),
        'Phone': fake.phone_number()
    }
    suppliers_data.append(supplier)

suppliers_df = pd.DataFrame(suppliers_data)
suppliers_df.to_excel('Suppliers.xlsx', index=False)

# Generate data for SupplierInventory table
supplier_inventory_data = []
for i in range(100):
    supplier_inventory = {
        'SupplierInventoryID': i+1,
        'SupplierID': fake.random_int(min=1, max=20),
        'PCID': fake.random_int(min=1, max=50),
        'Quantity': fake.random_int(min=0, max=50)
    }
    supplier_inventory_data.append(supplier_inventory)

supplier_inventory_df = pd.DataFrame(supplier_inventory_data)
supplier_inventory_df.to_excel('SupplierInventory.xlsx', index=False)

# Generate data for Employees table
employees_data = []
for i in range(30):
    employee = {
        'EmployeeID': i+1,
        'FirstName': fake.first_name(),
        'LastName': fake.last_name(),
        'Email': fake.email(),
        'Phone': fake.phone_number(),
        'HireDate': fake.date_between(start_date='-5y', end_date='today'),
        'JobTitle': fake.job(),
        'Salary': fake.pyfloat(min_value=30000, max_value=100000)
    }
    employees_data.append(employee)

employees_df = pd.DataFrame(employees_data)
employees_df.to_excel('Employees.xlsx', index=False)
