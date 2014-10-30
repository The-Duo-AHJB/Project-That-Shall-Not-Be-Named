insert into egccuser values (111, "bigJim", "IRock1", "James", "Johnson", "23 Walnut Street", "Pittsburgh", "PA", "15232" );
insert into egccuser values (112, "NYCgirl", "NeverSleep2", "Mary", "Williams", "3456 Fifth Ave", "New York", "NY", "10012");
insert into egccuser values (113, "CAdude", "2Julie", "Robert", "Jones", "555 Saticoy St", "NORTH HOLLYWOOD", "CA", "91605");
insert into egccuser values (114, "DeeMan", "I2Rockkk", "David", "Wilson", "1152 Bell Mountain Dr", "Austin", "TX", "78730");

insert into item values(2211, 'Learning Web Design', 'A Beginner\'s Guide to HTML, CSS, JavaScript, and Web Graphics', 5,15,'2014-11-30',
111, 'open','textbook');

insert into item values(2212, 'Big Data', 'A Revolution That Will Transform How We Live, Work, and Think', 1,10,'2014-10-08',
111, 'sold','textbook');

insert into item values(2213, 'Cloud Computing', 'Cloud Computing Service and Deployment Models: Layers and Management', 10,60,
'2014-10-01', 111, 'shipped','textbook');

insert into item values(2214, 'iPad', 'The only device you will need', 100,150,'2014-10-11', 113, 'shipped','technology');

insert into Bid values (112, 2211, '2014-10-01', '10:00:00', 6);
insert into Bid values (113, 2211, '2014-10-01', '10:05:00', 10);
insert into Bid values (112, 2211, '2014-10-01', '10:07:00', 15);
insert into Bid values (112, 2212, '2014-10-01', '11:00:00', 2);
insert into Bid values (113, 2212, '2014-10-05', '09:05:00', 5);
insert into Bid values (112, 2212, '2014-10-07', '12:00:00', 6);
insert into Bid values (113, 2212, '2014-10-08', '09:05:00', 10);
insert into Bid values (112, 2213, '2014-10-01', '11:00:00', 11);
insert into Bid values (113, 2213, '2014-10-01', '11:40:00', 11.50);
insert into Bid values (112, 2213, '2014-10-01', '11:41:00', 20);
insert into Bid values (113, 2213, '2014-10-01', '11:42:00', 30);
insert into Bid values (112, 2213, '2014-10-01', '11:43:00', 40);
insert into Bid values (113, 2213, '2014-10-01', '11:44:00', 45);
insert into Bid values (112, 2213, '2014-10-01', '11:45:00', 50);
insert into Bid values (113, 2213, '2014-10-01', '11:46:00', 55);
insert into Bid values (112, 2213, '2014-10-01', '11:49:00', 60);
insert into Bid values (111, 2214, '2014-10-11', '11:45:00', 110);
insert into Bid values (114, 2214, '2014-10-11', '11:46:00', 120);
insert into Bid values (111, 2214, '2014-10-11', '11:47:00', 130);
insert into Bid values (114, 2214, '2014-10-11', '11:48:00', 140);
insert into Bid values (111, 2214, '2014-10-11', '11:49:00', 150);

insert into sellerRating values (111, 112, 3,'Took too long to ship my item', '2014-10-15');
insert into sellerRating values (113, 111, 5,'Got my item on time', '2014-10-13');

insert into purchase values (112, 2213, 60,'2014-10-01','2014-10-13');
insert into purchase values (111, 2214, 150, '2014-10-11', '2014-10-12');
insert into purchase values (113, 2212, 10, '2014-10-08', null); 