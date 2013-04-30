drop table if exists student_details;

drop table if exists student_parent_details;

create table student_details(gr_number integer primary key , name varchar(80), Gender varchar(10), dob varchar(20),
		nationality varchar(50), blood_group varchar(15), religion varchar(30), class_section varchar(10), 
		caste varchar(30), date_admission varchar(20), mode_transport varchar(30), bus_route varchar(5),
		pickup_point varchar(50), caste_certi varchar(20), phy_handy varchar(20));
		
		
		
		
create table student_parent_details(gr_number integer , name varchar(50), nationality varchar(50),
				mother_tongue varchar(30), occupation varchar(50), name_of_office varchar(100), address text,
				phone_number varchar(20), relation varchar(20), primary key(gr_number, relation));