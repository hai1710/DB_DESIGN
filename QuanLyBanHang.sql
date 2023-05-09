create database QuanLyBanHang;

use QuanLyBanHang;

create table Customer(
cID int auto_increment,
cName varchar(30),
cAge int,
primary key(cID)
);

create table OrderCustomer(
oID int auto_increment,
cID int not null,
foreign key(cID)references Customer(cID),
oDate datetime,
oTotalPrice int,
primary key (oID)
);

create table Product(
pID int auto_increment,
pName varchar(30),
pPrice int,
primary key(pID));

create table OrderDetail(
oID int,
foreign key(oID)references OrderCustomer(oID),
pID int,
foreign key(pID)references Product(pId),
odQTY int default 1
);