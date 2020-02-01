-- Alex Fittinghoff
-- CS 325 - Fall 2019
-- last modified: 12/12/2019

delete from Daily_Sales;

insert into Daily_Sales
values
(101, '20-NOV-2019');

insert into Daily_Sales
values
(102, '20-NOV-2019');

insert into Daily_Sales
values
(103, '21-NOV-2019');

insert into Daily_Sales
values
(104, '22-NOV-2019');

insert into Daily_Sales
values
(105, '24-NOV-2019');

insert into Daily_Sales
values
(106, '24-NOV-2019');

insert into Daily_Sales
values
(107, '25-NOV-2019');

insert into Daily_Sales
values
(108, '26-NOV-2019');

insert into Daily_Sales
values
(109, '27-NOV-2019');

insert into Daily_Sales
values
(110, '28-NOV-2019');

insert into Daily_Sales
values
(111, '28-NOV-2019');

insert into Daily_Sales
values
(112, '29-NOV-2019');

insert into Daily_Sales
values
(113, '01-DEC-2019');

insert into Daily_Sales
values
(114, '01-DEC-2019');

insert into Daily_Sales
values
(115, '01-DEC-2019');

insert into Daily_Sales
values
(116, '02-DEC-2019');

insert into Daily_Sales
values
(117, '02-DEC-2019');

insert into Daily_Sales
values
(118, '03-DEC-2019');

insert into Daily_Sales
values
(119, '03-DEC-2019');


delete from Purchase_Type;

insert into Purchase_Type
values
(101, 'CreditCard');

insert into Purchase_Type
values
(102, 'CreditCard');

insert into Purchase_Type
values
(103, 'DebitCard');

insert into Purchase_Type
values
(104, 'Cash');

insert into Purchase_Type
values
(104, 'CreditCard');

insert into Purchase_Type
values
(105, 'DebitCard');

insert into Purchase_Type
values
(106, 'DebitCard');

insert into Purchase_Type
values
(107, 'DebitCard');

insert into Purchase_Type
values
(107, 'Cash');

insert into Purchase_Type
values
(108, 'Cash');

insert into Purchase_Type
values
(109, 'Cash');

insert into Purchase_Type
values
(110, 'Cash');

insert into Purchase_Type
values
(111, 'CreditCard');

insert into Purchase_Type
values
(112, 'CreditCard');

delete from Favored_Customers;

insert into Favored_Customers
values
(10301, 'Sanders', 'Dennis', '555-555-1234', '1234 Fake St.', 'ds@fake.com');

insert into Favored_Customers
values
(10302, 'Samuels', 'Mary', '555-555-1238', '87 E St.', 'ms@fake.com');

insert into Favored_Customers
values
(10303, 'Roberts', 'Mike', '555-555-6789', '13 K St.', 'mr@fake.com');

insert into Favored_Customers
values
(10304, 'Lee', 'Jim', '555-555-6786', '14 K St.', 'jl@fake.com');

insert into Favored_Customers
values
(10305, 'Lee', 'Wanda', '555-555-6786', '14 K St.', 'wl@fake.com');

insert into Favored_Customers
values
(10306, 'Lemuels', 'Barry', '555-555-6226', '11 M St.', 'bl@fake.com');

insert into Favored_Customers
values
(10307, 'Davis', 'Mike', '555-555-6212', '5 North St.', 'md@fake.com');

insert into Favored_Customers
values
(10308, 'Thompson', 'Harold', '555-555-1342', '77 North St.', 'ht@fake.com');

insert into Favored_Customers
values
(10309, 'Gruber', 'Hans', '555-555-0999', '12 Nakatomi St.', 'hg@fake.com');

insert into Favored_Customers
values
(10310, 'Johnson', 'Bob', '555-555-0912', '11 Harris St.', 'bj2@fake.com');

insert into Favored_Customers
values
(10311, 'Johns', 'Terry', '555-555-1662', '19 Beef St.', 'tj3@fake.com');

delete from Events;

insert into Events
values
(01, 'Mike''s Birthday', 'Birthday', '01-SEP-2018', '5:00 PM', 10310);

insert into Events
values
(02, 'Tom''s Birthday', 'Birthday', '03-SEP-2019', '6:00 PM', 10305);

insert into Events
values
(03, 'Christmas Party', 'Holiday', '25-DEC-2019', '3:00 PM', 10306);

insert into Events
values
(04, 'Christmas Party', 'Holiday', '25-DEC-2019', '4:00 PM', 10307);

insert into Events
values
(05, 'Thanksgiving', 'Holiday', '28-NOV-2019', '4:00 PM', 10307);

insert into Events
values
(06, 'Thanksgiving', 'Holiday', '28-NOV-2019', '4:00 PM', 10306);

insert into Events
values
(07, 'FrogFest 2019', 'Party', '06-DEC-2019', '5:00 PM', 10302);

insert into Events
values
(08, 'BugFest 2019', 'Party', '06-DEC-2019', '5:00 PM', 10303);

insert into Events
values
(09, 'DragonCon', 'Party', '05-OCT-2019', '2:00 PM', 10308);

insert into Events
values
(10, 'Otto''s Birthday', 'Birthday', '02-OCT-2019', '4:00 PM', 10304);

insert into Events
values
(11, 'Mindy''s Birthday', 'Birthday', '01-AUG-2019', '4:00 PM', 10301);

insert into Events
values
(12, 'Jim''s Bachelor Party', 'Party', '03-FEB-2020', '4:00 PM', 10311);

insert into Events 
values
(13, 'Ice Cream Social 2020', 'Party', '15-JAN-2020', '2:00 PM', 10301);

insert into Events
values
(14, 'PlumberFest 2020', 'Party', '19-JAN-2020', '1:00 PM', 10304);

insert into Events
values
(15, 'ComicCon 2020', 'Party', '11-MAR-2020', '1:00 PM', 10305);

insert into Events
values
(16, 'AnimeFest 2020', 'Party', '19-FEB-2020', '2:00 PM', 10303);

insert into Events
values
(17, 'Reggie''s Birthday', 'Birthday', '26-FEB-2020', '2:00 PM', 10308);

insert into Events
values
(18, 'Christmas Party', 'Holiday', '25-DEC-2020', '4:00 PM', 10311);

insert into Events
values
(19, 'Christmas Party', 'Holiday', '25-DEC-2020', '3:00 PM', 10301);

insert into Events
values
(20, 'Thanksgiving Party', 'Holiday', '26-NOV-2020', '3:00 PM', 10307);

insert into Events
values
(21, 'ComicFest 2020', 'Party', '11-MAR-2020', '2:00 PM', 10308);

insert into Events
values
(22, 'ComicX 2020', 'Party', '11-MAR-2020', '2:00 PM', 10302);

insert into Events
values
(23, 'Christmas Party', 'Holiday', '25-DEC-2020', '4:30 PM', 10302);

delete from Desserts;

insert into Desserts
values
(101, 'Cake', 10301, 11);

insert into Desserts
values
(102, 'Cake', 10304, 10);

insert into Desserts
values
(103, 'Ice Cream', 10308, 09);

insert into Desserts
values
(104, 'Ice Cream', 10303, 08);

insert into Desserts
values
(105, 'Ice Cream', 10302, 07);

insert into Desserts
values
(106, 'Ice Cream', 10306, 06);

insert into Desserts
values
(107, 'Cake', 10306, 06);

insert into Desserts
values
(108, 'Cake', 10307, 05);

insert into Desserts
values
(109, 'Ice Cream', 10306, 06);

insert into Desserts
values
(110, 'Ice Cream', 10307, 05);

insert into Desserts
values
(111, 'Cake', 10310, 01);

insert into Desserts
values
(112, 'Cake', NULL, NULL);

insert into Desserts
values
(113, 'Cake', NULL, NULL);

insert into Desserts
values
(114, 'Cake', NULL, NULL);

insert into Desserts
values
(115, 'Cake', NULL, NULL);

insert into Desserts
values
(116, 'Cake', NULL, NULL);

insert into Desserts
values
(117, 'Cake', NULL, NULL);

insert into Desserts
values
(118, 'Ice Cream', 10301, NULL);

insert into Desserts
values
(119, 'Ice Cream', 10302, NULL);

insert into Desserts
values
(120, 'Ice Cream', 10303, NULL);

insert into Desserts
values
(121, 'Ice Cream', 10304, NULL);

insert into Desserts
values
(122, 'Ice Cream', 10305, NULL);

insert into Desserts
values
(123, 'Ice Cream', NULL, NULL);

insert into Desserts
values
(124, 'Ice Cream', 10302, NULL);

insert into Desserts
values
(125, 'Cake', 10302, NULL);

insert into Desserts
values
(126, 'Cake', 10302, NULL);


delete from Toppings;

insert into Toppings
values
(10, 'Chocolate Frosting', 2, 101);

insert into Toppings
values
(11, 'Chocolate Sauce', 3, 102);

insert into Toppings
values
(12, 'Reese''s Cups', 1, 103);

insert into Toppings
values
(13, 'White Chocolate Chips', 2, 104);

insert into Toppings
values
(14, 'Chocolate Chips', 3, 105);

insert into Toppings
values
(15, 'Chocolate Chips', 2, 106);

insert into Toppings
values
(16, 'Cherry Sauce', 4, 107);

insert into Toppings
values
(17, 'Chocolate Sauce', 2, 107);

insert into Toppings
values
(18, 'Vanilla Frosting', 2, 108);

insert into Toppings
values
(19, 'Cookie Dough', 2, 109);

insert into Toppings
values
(20, 'Cookie Dough', 3, 110);

insert into Toppings
values
(21, 'Chocolate Chips', 3, 111);

delete from Dessert_Sales;

insert into Dessert_Sales
values
(101, 101);

insert into Dessert_Sales
values
(102, 102);

insert into Dessert_Sales
values
(103, 104);

insert into Dessert_Sales
values
(104, 103);

insert into Dessert_Sales
values
(105, 105);

insert into Dessert_Sales
values
(106, 111);

insert into Dessert_Sales
values
(107, 110);

insert into Dessert_Sales
values
(108, 109);

insert into Dessert_Sales
values
(109, 108);

insert into Dessert_Sales
values
(110, 112);

insert into Dessert_Sales
values
(111, 107);

insert into Dessert_Sales
values
(112, 118);

insert into Dessert_Sales
values
(113, 119);

insert into Dessert_Sales
values
(118, 116);

insert into Dessert_Sales
values
(119, 117);

insert into Dessert_Sales
values
(120, 115);

insert into Dessert_Sales
values
(121, 114);

insert into Dessert_Sales
values
(122, 113);

delete from Ice_Cream;

insert into Ice_Cream
values
(103, 'Chocolate', 'Md', 'Cup', 2, 2);

insert into Ice_Cream
values
(104, 'Vanilla', 'Md', 'Con', 2, 3);

insert into Ice_Cream
values
(105, 'Cookies n'' Cream', 'Lg', 'Con', 1, 3);

insert into Ice_Cream
values
(106, 'Cookie Dough', 'Lg', 'Cup', 3, 1);

insert into Ice_Cream
values
(109, 'Chocolate', 'Sm', 'Cup', 1, 1);

insert into Ice_Cream
values
(110, 'Chocolate', 'Sm', 'Con', 1, 2);

insert into Ice_Cream
values
(118, 'Raspberry', 'Md', 'Con', 2, 2);

insert into Ice_Cream
values
(119, 'Raspberry', 'Lg', 'Con', 3, 4);

insert into Ice_Cream
values
(120, 'Blueberry', 'Lg', 'Cup', 2, 5);

insert into Ice_Cream
values
(121, 'Cookies n'' Cream', 'Sm', 'Cup', 2, 2);

insert into Ice_Cream
values
(122, 'Cookies n'' Cream', 'Lg', 'Cup', 3, 1);

insert into Ice_Cream
values
(123, 'Cookie Dough', 'Md', 'Con', 2, 1);

delete from Cakes;

insert into Cakes
values
(101, 'Chocolate', 3, 'Vanilla', 'Rectangle', 2);

insert into Cakes
values
(102, 'Carrot', 2, 'Vanilla', 'Circle', 1);

insert into Cakes
values
(107, 'Chocolate', 3, 'Chocolate', 'Circle', 3);

insert into Cakes
values
(108, 'Strawberry', 1, 'Chocolate', 'Square', 4);

insert into Cakes
values
(111, 'Red Velvet', 3, 'Vanilla', 'Square', 2);

insert into Cakes
values
(112, 'Regular', 2, 'Vanilla', 'Square', 3);

insert into Cakes
values
(113, 'Angel Food Cake', 1, 'None', 'Circle', 1);

insert into Cakes
values
(114, 'Chocolate', 3, 'Chocolate', 'Circle', 2);

insert into Cakes
values
(115, 'Chocolate', 3, 'Chocolate', 'Rectangle', 4);

insert into Cakes
values
(116, 'Regular', 2, 'Chocolate', 'Rectangle', 2);

insert into Cakes
values
(117, 'Regular', 2, 'Vanilla', 'Circle', 3);

