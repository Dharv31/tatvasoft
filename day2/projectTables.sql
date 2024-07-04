drop table city;

create table country(
	id integer primary key,
	CountryName character varying(100) NOT NULL
);

drop table country;

create table city(
	id integer primary key,
	CountryId integer unique ,
	CityName character varying(100) NOT NULL
);

create table MissionApplication(
	id integer primary key  ,
	MissionId integer unique not null,
	userId integer unique not null,
	AppliedDate timestamp with time zone NOT NULL DEFAULT now(),
	status boolean ,
	Sheet integer 
	);


create table Mission(
	id integer primary key  ,
	MissionTitle character varying(250) NOT NULL,
	MissionDescription character varying(300) NOT NULL,
	MissionOrganisationName character varying(200) NOT NULL,
	MissionOrganisationDetail character varying(300) NOT NULL,
	CountryId integer unique not null,
	CityId integer unique not null,
	StartDate timestamp with time zone NOT NULL DEFAULT now(),
	EndDate timestamp with time zone ,
	MissionType character varying(100) NOT NULL,
	TotalSheets integer not null,
	RegistrationDeadLine timestamp with time zone NOT NULL ,
	MissionThemeId character varying(300) NOT NULL,
	MissionSkillId character varying(300) NOT NULL,
	MissionImages character varying(300) NOT NULL,
	MissionDocuments character varying(300) NOT NULL,
	MissionAvilability character varying(300) NOT NULL,
	MissionVideoUrl character varying(300) NOT NULL
	);

drop table mission;

create table MissionSkill(
	id integer primary key,
	SkillName character varying(100) NOT NULL,
	Status character varying(100) NOT NULL
);



create table MissionTheme(
	id integer primary key,
	ThemeName character varying(100) NOT NULL,
	Status character varying(100) NOT NULL
);

create table Users(
	id integer primary key,
	FirstName character varying(100) NOT NULL,
	LastNmae character varying(100) NOT NULL,
	PhoneNumber character varying(100) NOT NULL,
	EmailAddress character varying(100) NOT NULL,
	UserType character varying(100) NOT NULL,
	Password character varying(100) NOT NULL
);

create table UserDetail(
	id integer primary key,
	UserId integer not null,
	Name character varying(100) NOT NULL,
	Surname character varying(100) NOT NULL,
	EmployeeId character varying(100) NOT NULL,
	Manager character varying(100) NOT NULL,
	Title character varying(100) NOT NULL,
	Department character varying(100) NOT NULL,
	MyProfile character varying(100) NOT NULL,
	WhyIVolunteer character varying(100) NOT NULL,
	CountryId integer not null,
	CityId integer not null,
	Avilability character varying(100) NOT NULL,
	LindInUrl character varying(100) NOT NULL,
	MySkill character varying(100) NOT NULL,
	UserImage character varying(100) NOT NULL,
	status boolean
);

create table UserSkills(
	id integer primary key,
	Skill character varying(100) NOT NULL,
	userId integer unique not null
);

