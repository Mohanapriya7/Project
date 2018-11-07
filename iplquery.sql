--team table

create table IPL2K18.Team1
(
  Team_Id int  primary key,
  team_name varchar(20),
  home_ground varchar(30),
  team_owner varchar(30)
  
)


insert into IPL2K18.Team1 values('CSK','Chennai','INDIA_CEMENTS')

select * from  IPL2K18.Team1

--match table

create table IPL2K18.Match
(
Match_Id int  primary key,
Team_one_Id int,
Team_two_Id int,
Venue_Id int,
Schedule varchar(30),

)

insert into IPL2K18.Match values ('1','1','4','111','FN')
select * from IPL2K18.Match 

--venue
create table IPL2K18.Venue
(
Venue_Id int primary key,

VenueDescription varchar(50),
)

insert into IPL2K18.Venue values ('600000','Chennai')
select * FROM IPL2K18.Venue

--ticketcategory

create table IPL2K18.TicketCategory
(
TicketCategory_Id int primary key,
Category_Name varchar(30),
Category_Description varchar(40),
)

insert into IPL2K18.TicketCategory values('001','F class','First class')

select * from IPL2K18.TicketCategory

--schedule

create table IPL2K18.Schedule1
(
scheduleslot int primary key,
Match_Id int
FOREIGN KEY (Match_Id) REFERENCES IPL2K18.Match(Match_Id),
Venue_Id int
FOREIGN KEY (Venue_Id) REFERENCES IPL2K18.Venue(Venue_Id),
)




insert into IPL2K18.Schedule1 values ('1','1','600000')
select * FROM  IPL2K18.Schedule1


--ticket

create table IPL2K18.Ticket
(
Ticket_Id int  primary key,
Match_Id int
FOREIGN KEY (Match_Id) REFERENCES IPL2K18.Match(Match_Id),
Price int,
)
insert into IPL2K18.Ticket values ('001','1','5000')
select * FROM  IPL2K18.Ticket



-------
 create proc  mohanapriya.usp_DisplayMatch
 @m_id int,
 @t1_id int,
 @t2_id int,
 @v_id int,
 @scd varchar(30)

 AS
 BEGIN

insert into  mohanapriya.Match  values(@m_id,@t1_id,@t2_id,@v_id,@scd)
END
 
 exec   mohanapriya.usp_DisplayMatch '2','3','7','333','AN'
 select * from mohanapriya.Match

 

