
--team table

create table mohanapriya.Team1
(
  Team_Id int  primary key,
  team_name varchar(20),
  home_ground varchar(30),
  team_owner varchar(30)
  
)
insert into mohanapriya.Team1 values('1','CSK','Chennai','INDIA_CEMENTS')

select * from  mohanapriya.Team1

--match table

create table mohanapriya.Match
(
Match_Id int  primary key,
Team_one_Id int,
Team_two_Id int,
Venue_Id int,
Schedule varchar,

)

alter table mohanapriya.Match

alter column Schedule varchar(30)

insert into mohanapriya.Match values ('1','1','4','111','FN')
select * from mohanapriya.Match 


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

 --venue table

 create table mohanapriya.Venue
(
Venue_Id int primary key,

VenueDescription varchar(50),
)

insert into mohanapriya.Venue values ('600000','Chennai')
select * FROM mohanapriya.Venue


--ticket category table


create table mohanapriya.TicketCategory
(
TicketCategory_Id int primary key,
Category_Name varchar(30),
Category_Description varchar(40),
)

insert into mohanapriya.TicketCategory values('001','F class','First class')

select * from mohanapriya.TicketCategory