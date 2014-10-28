drop table if exists Purchase;
drop table if exists sellerRating;
drop table if exists Bid;
drop table if exists item;
drop table if exists egccuser;

create table egccuser 
(
UserID int not null, 
username varchar(30),
password varchar(30),
firstname varchar(30), 
lastname varchar(30), 
address varchar(300),
city varchar(50),
state char(2),
zipcode int,
constraint pk_egccuser primary key(UserID)
);

create table item
(
ItemID int not null,
title varchar(150),
description varchar(500),  
startingBid double, #I assume that this must be a double since there is an 11.50 bid somewhere
highestBid double,
endDate date,
SellerID int not null,
status varchar(20),  #This might need to be something different because we're only shown that it can be 'open', 'sold', or 'shipped'.
category varchar(50),
constraint pk_item primary key(ItemID),
constraint fk_item_SellerID foreign key(SellerID) references egccuser(UserID)
);

create table Bid
(
BuyerID int not null,
ItemID int not null,
dateOfBid date,
timeOfBid time, #at this very moment I'm not remembering if this is enough
currentBid double,
constraint pk_Bid primary key(BuyerID, ItemID, dateOfBid, timeOfBid),
constraint fk_Buyer foreign key(BuyerID) references egccuser(UserID),
constraint fk_ItemID foreign key(ItemID) references item(ItemID)
);

create table sellerRating
(
SellerID int not null,
BuyerID int not null,
rating char(1),  #might need to only be 1-5 if that's possible
comments varchar(300),
dateRated date,
constraint pk_sellerRating primary key(SellerID, BuyerID),
constraint fk_sellerRating_SellerID foreign key(SellerID) references egccuser(UserID),
constraint fk_sellerRating_BuyerID foreign key(BuyerID) references egccuser(UserID)
);

create table Purchase
(
BuyerID int not null,
ItemID int not null,
price double,
dateSold date,
dateShipped date,
constraint pk_purchase primary key(ItemID),
constraint fk_Purchase_Item foreign key(ItemID) references item(ItemID),
constraint fk_Purchase_Buyer foreign key(BuyerID) references egccuser(UserID)
);