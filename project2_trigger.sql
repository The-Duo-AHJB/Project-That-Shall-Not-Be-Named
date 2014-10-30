drop trigger if exists Project2Trigger;

delimiter $$
create trigger Project2Trigger
before insert on bid
for each row begin
Update item set HighestBid = new.currentBid where new.itemID = itemID;

end $$