drop DATABASE if EXISTS nepalipeople;
create DATABASE HamroDataBase;
use hamroDataBase;
create TABLE Customers(
CustomerID INT NOT NULL AUTO_INCREMENT,
FirstName CHAR(50) NULL,
MiddleName CHAR(50) NULL,
LastName char(50) NULL,
Address CHAR(250) NULL,
Email char(50) Null,
Phone char(50) Null,
Notes varchar(750) NULL,
PRIMARY KEY(CustomerID)
) ;
use HamroDatabase;
create TABLE orderitems1(
OrderItemID INT NOT NULL AUTO_INCREMENT,
	OrderID INT NOT NULL,
	ProductID INT NOT NULL,
    Quantity int	NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    Discount Decimal (10,2) not null,
    notes VARCHAR(750) null,
    PRIMARY KEY(OrderItemID)
);

CREATE TABLE Payments
(
	PaymentID INT NOT NULL AUTO_INCREMENT,
	OrderID INT NOT NULL,
	PaymentDate DATETIME NOT NULL,
	PaymentType CHAR(50) NULL,
	PaymentRef CHAR(50) NULL,
	Amount DECIMAL(10, 2) NOT NULL,
	Notes VARCHAR(750) NULL,
	BalanceNotes VARCHAR(750) NULL,
    PRIMARY KEY (PaymentID, OrderID)
);

use HamroDataBase;
CREATE TABLE ProductCategories
(
	ProductCategoryID INT NOT NULL AUTO_INCREMENT,
	ProductCategoryName CHAR(50) NOT NULL,
	Notes VARCHAR(750) NULL,
    PRIMARY KEY (ProductCategoryID)
);

CREATE TABLE Products
(
	ProductID INT NOT NULL AUTO_INCREMENT,
	ProductCategoryID INT NOT NULL,
	SupplierID INT NOT NULL,
	ProductName CHAR(50) NOT NULL,
	ProductImage MEDIUMBLOB NULL,
	NetRetailPrice DECIMAL(10, 2) NULL,
	AvailableQuantity INT NOT NULL,
	WholesalePrice DECIMAL(10, 2) NOT NULL,
	UnitKGWeight DECIMAL(10, 5) NULL,
	Notes VARCHAR(750) NULL,
    PRIMARY KEY (ProductID)
);

CREATE TABLE Suppliers
(
	SupplierID INT NOT NULL AUTO_INCREMENT,
	SupplierName CHAR(50) NOT NULL,
	Country CHAR(50) NOT NULL,
	Address CHAR(50) NULL,
	PhoneNumber CHAR(50) NULL,
	ContactPerson CHAR(50) NULL,
	Notes VARCHAR(750) NULL,
    PRIMARY KEY (SupplierID)
);

CREATE TABLE Orders
(
	OrderID INT NOT NULL AUTO_INCREMENT,
	CustomerID INT NOT NULL,
	OrderNumber CHAR(50) NOT NULL,
	OrderDate DATETIME NOT NULL,
	ShipmentDate DATETIME NULL,
	OrderStatus CHAR(10) NULL,
	Notes VARCHAR(750) NULL,
    PRIMARY KEY (OrderID)
);

use HamrodataBase;
alter table payments 
add FOREIGN KEY(OrderID) REFERENCES orders(orderID);
use hamrodatabase;
alter table orders
add FOREIGN KEY(customerID) REFERENCES customers(customerID);


