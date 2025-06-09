create database QLDA
on primary
(name = 'QLDA.Data', filename = 'C:\QLDA\QLDA.mdf')
log on
(name = 'QLDA.Log', filename = 'C:\QLDA\QLDA.ldf')

use QLDA

create table NCC
(
	MaNCC		char(5) primary key,
	Ten			varchar(40),
	Heso		int,
	ThPho		varchar(20)
)

create table VATTU
(
	MaVT		char(5) primary key,
	Ten			varchar(40),
	Mau			varchar(15),
	TrLuong		float,
	ThPho		varchar(20)
)

create table DUAN
(
	MaDA		char(5) primary key,
	Ten			varchar(40),
	ThPho		varchar(20)
)

create table CC
(
	MaNCC		char(5),
	MaVT		char(5),
	MaDA		char(5),
	SLuong		int,
	primary key (MaNCC, MaVT, MaDA),
	foreign key (MaNCC) references NCC(MaNCC)
	on update cascade
	on delete cascade,
	foreign key (MaVT) references VATTU(MaVT)
	on update cascade
	on delete cascade,
	foreign key (MaDA) references DUAN(MaDA)
	on update cascade
	on delete cascade,
)



