-- Alex Fittinghoff
-- CS 325 - Fall 2019
-- last modified: 12/11/2019

drop table Daily_Sales cascade constraints;

/* 
	Daily_Sales is meant to keep track of what is sold and when.
*/

create table Daily_Sales
(sale_id	integer,
sale_date	date,
primary key	(sale_id)
);

drop table Purchase_Type cascade constraints;

/*
	Purchase_Type keeps track of how each purchase was 
	paid for (cash or credit).
*/

create table Purchase_Type
(sale_id	integer,
purchase_method	varchar(30),
primary key (sale_id, purchase_method),
foreign key (sale_id) references Daily_Sales
);

drop table Favored_Customers cascade constraints;

/*
	Favored_Customers is a list of certain repeat
	customers and their contact information. Those
	on this list can host events and order 
	desserts. 
*/

create table Favored_Customers
(cust_id	integer,
cust_lname	varchar(50),
cust_fname	varchar(30),
cust_phone_num  varchar(30),
cust_address	varchar(50),
cust_email	varchar(50),
primary key (cust_id)
);

drop table Events cascade constraints;

/*
	Events are social gatherings (parties, etc.) that
	desserts can be sold at/ordered for. We keep track
	of the event's name ("Cake-A-Palooza", etc.), the
	type of event (a party, a wedding, etc.), and the
	date/time of the event. We also keep track of the
	customer hosting the event.
*/

create table Events
(event_id	integer,
event_name	varchar(50),
event_type	varchar(30),
event_date	date,
event_time	varchar(30),
cust_id		integer,
primary	key (event_id),
foreign key (cust_id) references Favored_Customers
);

drop table Desserts cascade constraints;

/*
	Desserts are cakes and ice cream sold by Tommy's.
*/

create table Desserts
(dessert_id	integer,
dessert_type	varchar(30),
cust_id		integer,
event_id	integer,
primary key (dessert_id),
foreign key (cust_id) references Favored_Customers,
foreign key (event_id) references Events
);

drop table Toppings cascade constraints;

/*
	Toppings are candies and other goodies placed on
	cakes/ice cream as the customer desires. We keep
	track of the topping's name, as well as the 
	amount in pre-determined "servings".
*/

create table Toppings
(topping_id	integer,
topping_name	varchar(30),
topping_amount	integer,
dessert_id	integer,
primary key (topping_id),
foreign key (dessert_id) references Desserts
);

drop table Dessert_Sales cascade constraints;

/*
	Dessert_Sales is simply which desserts were sold
	in which sales.
*/

create table Dessert_Sales
(dessert_id	integer,
sale_id		integer,
primary key (dessert_id, sale_id),
foreign key (dessert_id) references Desserts,
foreign key (sale_id) references Daily_Sales
);

drop table Ice_Cream cascade constraints;

/*
	Ice_Cream is a type of dessert we sell.	We keep track
	of the flavor and size ordered, whether it's served in
	a cup or a cone, the number of scoops, & the number of
	each ice cream.
*/

create table Ice_Cream
(dessert_id     integer,
ice_cream_flavor	varchar(30),
ice_cream_size	char(2),
cup_or_cone	char(3),
scoop_num	integer,
num_ice_creams	integer,
primary key (dessert_id),
foreign key (dessert_id) references Desserts
);

drop table Cakes cascade constraints;

/*
	Cakes are our other main dessert. We keep track of
	the type of cake, the number of layers, the type of
	frosting, the shape of the cake, and the number of 
	cakes.
*/

create table Cakes
(dessert_id     integer,
cake_type	varchar(30),
cake_layer_num	integer,
cake_frosting_type	varchar(30),
cake_shape	varchar(30),
num_cakes	integer,
primary key (dessert_id),
foreign key (dessert_id) references Desserts
);
