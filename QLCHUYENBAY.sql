CREATE DATABASE QLCB
 ON  PRIMARY 
( NAME = 'QLCB_Data', FILENAME = 'C:\QLCB\QLCB.MDF')
 LOG ON 
( NAME = 'QLCB_Log', FILENAME = 'C:\QLCB\QLCB.LDF')
--
use QLCB
--
create table MAYBAY
(
	MaMB	int primary key,
	Loai	varchar(50),
	TamBay	int
)
create table NHANVIEN
(
	MaNV	char(9) primary key,
	Ten		nvarchar(50),
	Luong	int,
)
create table CHUNGNHAN
(
	MaNV char(9),
	MaMB int,
	primary key(MaNV,MAMB),
	foreign key(MaNV) references NHANVIEN(MaNV)
	on update cascade
	on delete cascade,
	foreign key(MaMB) references MAYBAY(MaMB)
	on update cascade
	on delete cascade
) 
create table CHUYENBAY
(
	MaCB	char(5)	primary key,
	GaDi	char(3),
	GaDen	char(3),
	DoDai	int,
	GioDi	time,
	GioDen	time,
	ChiPhi	int,
	MaMB	int,
	foreign key (MaMB) references MAYBAY(MaMB)
	on update cascade
	on delete set null
)
--
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'011564812', N'Tôn Văn Quý', 153972)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'141582651', N'Đoàn Thị Mai', 178345)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'142519864', N'Nguyển Thị Xuân Đào', 227489)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'159542516', N'Lê Văn Kỳ', 48250)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'242518965', N'Trần Văn Sơn', 120433)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'248965255', N'Trần Thị Ba', 43723)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'254099823', N'Nguyễn Thị Quỳnh', 24450)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'269734834', N'Trương Tuấn Anh', 289950)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'274878974', N'Mai Quốc Minh', 99890)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'287321212', N'Dương Văn Minh', 48090)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'310454876', N'Tạ Văn Đồ', 212156)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'310454877', N'Trần Văn Hạo', 33546)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'348121549', N'Nguyễn Văn Thanh', 32899)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'355548984', N'Trần Thị Hoài An', 212156)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'356187925', N'Nguyễn Vinh Bảo', 44740)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'390487451', N'Lê Văn Luật', 212156)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'489221823', N'Bùi Quốc Chinh', 23980)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'489456522', N'Nguyễn Thị Quý Linh', 127984)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'548977562', N'Lê Văn Quý', 84476)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'550156548', N'Nguyễn Thị Cẩm', 205187)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'552455318', N'La Quế', 101745)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'552455348', N'Bùi Thị Dung', 92013)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'567354612', N'Quan Cẩm Ly', 256481)
INSERT [NHANVIEN] ([MaNV], [Ten], [Luong]) VALUES (N'574489457', N'Bùi Văn Lập', 20)
--
INSERT [MAYBAY] ([MaMB], [Loai], [TamBay]) VALUES (154, N'Tupolev 154', 6565)
INSERT [MAYBAY] ([MaMB], [Loai], [TamBay]) VALUES (319, N'Airbus A319', 2888)
INSERT [MAYBAY] ([MaMB], [Loai], [TamBay]) VALUES (320, N'Airbus A320', 4168)
INSERT [MAYBAY] ([MaMB], [Loai], [TamBay]) VALUES (340, N'Airbus A340 - 300', 11392)
INSERT [MAYBAY] ([MaMB], [Loai], [TamBay]) VALUES (727, N'Boeing 727', 2406)
INSERT [MAYBAY] ([MaMB], [Loai], [TamBay]) VALUES (737, N'Boeing 737 - 800', 5413)
INSERT [MAYBAY] ([MaMB], [Loai], [TamBay]) VALUES (747, N'Boeing 747 - 400', 13488)
INSERT [MAYBAY] ([MaMB], [Loai], [TamBay]) VALUES (757, N'Boeing 757 - 300', 6416)
INSERT [MAYBAY] ([MaMB], [Loai], [TamBay]) VALUES (767, N'Boeing 767 - 400ER', 10360)
INSERT [MAYBAY] ([MaMB], [Loai], [TamBay]) VALUES (777, N'Boeing 777 - 300', 10306)
--
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN216', N'SGN', N'DIN', 4170, CAST(N'10:30:00' AS Time), CAST(N'14:20:00' AS Time), 262, 757)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN254', N'SGN', N'HUI', 8765, CAST(N'18:40:00' AS Time), CAST(N'20:00:00' AS Time), 781, 767)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN269', N'HAN', N'CXR', 1262, CAST(N'14:10:00' AS Time), CAST(N'15:50:00' AS Time), 202, 340)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN276', N'DAD', N'CXR', 1283, CAST(N'09:00:00' AS Time), CAST(N'12:00:00' AS Time), 203, 154)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN280', N'SGN', N'HPH', 11979, CAST(N'06:00:00' AS Time), CAST(N'08:00:00' AS Time), 1279, 777)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN315', N'HAN', N'DAD', 134, CAST(N'11:45:00' AS Time), CAST(N'13:00:00' AS Time), 112, 757)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN317', N'HAN', N'UIH', 827, CAST(N'15:00:00' AS Time), CAST(N'16:15:00' AS Time), 190, 777)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN320', N'SGN', N'DAD', 2798, CAST(N'06:00:00' AS Time), CAST(N'07:10:00' AS Time), 221, 737)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN338', N'SGN', N'BMV', 4081, CAST(N'15:25:00' AS Time), CAST(N'16:25:00' AS Time), 375, 320)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN374', N'HAN', N'VII', 510, CAST(N'11:40:00' AS Time), CAST(N'13:25:00' AS Time), 120, 747)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN375', N'VII', N'CXR', 752, CAST(N'14:15:00' AS Time), CAST(N'16:00:00' AS Time), 181, 737)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN431', N'SGN', N'CAH', 3693, CAST(N'05:55:00' AS Time), CAST(N'06:55:00' AS Time), 236, 747)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN440', N'SGN', N'BMV', 4081, CAST(N'18:30:00' AS Time), CAST(N'19:30:00' AS Time), 426, 319)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN464', N'SGN', N'DLI', 2002, CAST(N'07:20:00' AS Time), CAST(N'08:05:00' AS Time), 225, 340)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN474', N'PXU', N'PQC', 1586, CAST(N'08:40:00' AS Time), CAST(N'11:20:00' AS Time), 102, 320)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN476', N'UIH', N'PQC', 485, CAST(N'09:15:00' AS Time), CAST(N'11:50:00' AS Time), 117, 319)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN651', N'DAD', N'SGN', 2798, CAST(N'19:30:00' AS Time), CAST(N'08:00:00' AS Time), 221, 727)
INSERT [CHUYENBAY] ([MaCB], [GaDi], [GaDen], [DoDai], [GioDi], [GioDen], [ChiPhi], [MaMB]) VALUES (N'VN741', N'HAN', N'PXU', 395, CAST(N'06:30:00' AS Time), CAST(N'08:30:00' AS Time), 120, 767)
--
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'011564812', 737)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'011564812', 757)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'141582651', 737)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'141582651', 757)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'141582651', 767)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'142519864', 320)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'142519864', 340)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'142519864', 737)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'142519864', 747)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'142519864', 757)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'142519864', 767)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'142519864', 777)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'242518965', 737)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'242518965', 757)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'269734834', 154)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'269734834', 319)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'269734834', 320)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'269734834', 340)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'269734834', 727)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'269734834', 737)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'269734834', 747)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'269734834', 757)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'269734834', 767)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'269734834', 777)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'274878974', 757)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'274878974', 767)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'310454876', 154)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'355548984', 154)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'390487451', 319)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'390487451', 320)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'390487451', 340)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'552455318', 319)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'552455318', 737)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'552455318', 747)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'552455318', 767)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'567354612', 340)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'567354612', 727)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'567354612', 737)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'567354612', 747)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'567354612', 757)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'567354612', 767)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'567354612', 777)
INSERT [CHUNGNHAN] ([MaNV], [MaMB]) VALUES (N'574489457', 154)

--

--1) Cho biết các chuyến bay đi Đà Lạt (DAD).
select MaCB, GaDi, GaDen, DoDai, GioDi, GioDen, ChiPhi, MaMB
from CHUYENBAY
where GaDen = 'DAD'
--2) Cho biết các loại máy bay có tầm bay lớn hơn 10,000km.

select Loai as [Loai may bay co tam bay lon hon 10,000km]
from MAYBAY
where TamBay > 10000

--3) Tìm các nhân viên có lương nhỏ hơn 10,000.

select Ten as [Nhan vien co luong nho hon 10,000]
from NHANVIEN
where Luong < 10000

--4) Cho biết các chuyến bay có độ dài đường bay nhỏ hơn 10.000km và lớn hơn
--8.000km.

select MaCB, GaDi, GaDen
from CHUYENBAY
where DoDai > 8000 and DoDai < 10000

--5) Cho biết các chuyến bay xuất phát từ Sài Gòn (SGN) đi Ban Mê Thuộc (BMV).

select MaCB as [Chuyen bay Sai Gon di Ban Me Thuot]
from CHUYENBAY
where GaDi = 'SGN' and GaDen = 'BMV'

--6) Có bao nhiêu chuyến bay xuất phát từ Sài Gòn (SGN).

select count(*) as [So chuyen bay xuat phat tu Sai Gon]
from CHUYENBAY
where GaDi = 'SGN'

--7) Có bao nhiêu loại máy báy Boeing.

select *
from MAYBAY
where Loai like '%Boeing%';

--8) Cho biết tổng số lương phải trả cho các nhân viên.

select SUM(Luong) as [Tong luong phai tri cha cho cac nhan vien]
from NHANVIEN;

--9) Cho biết mã số của các phi công lái máy báy Boeing.

select distinct L.MaNV as [Ma so cac phi cong lai may bay Boeing]
from CHUNGNHAN L
join MAYBAY M on L.MaMB = M.MaMB
where M.Loai like '%Boeing%';

--10) Cho biết các nhân viên có thể lái máy bay có mã số 747.

select distinct NV.MaNV, NV.Ten as [Nhan vien co the lai may bay ma so 747]
from NHANVIEN NV
join CHUNGNHAN L on NV.MaNV = L.MaNV
where L.MaMB = 747;

--11) Cho biết mã số của các loại máy bay mà nhân viên có họ Nguyễn có thể lái.

select distinct L.MaMB as [Ma số của các loại máy bay mà nhân viên có họ Nguyễn có thể lái]
from NHANVIEN NV
join CHUNGNHAN L on NV.MaNV = L.MaNV
where NV.Ten like N'%Nguyển%';

--12) Cho biết mã số của các phi công vừa lái được Boeing vừa lái được Airbus.

select distinct MaNV as [Mã số của các phi công vừa lái được Boeing vừa lái được Airbus]
from CHUNGNHAN L
join MAYBAY M on L.MaMB = M.MaMB
where M.Loai like '%Boeing%'
and MaNV in (
	select MaNV
	from CHUNGNHAN L2
	join MAYBAY M2 on L2.MaMB = M2.MaMB
	where M2.Loai like '%Airbus%'
)

--13) Cho biết các loại máy bay có thể thực hiện chuyến bay VN280.

select distinct MB.Loai
from MAYBAY MB, CHUYENBAY CB
where CB.MaCB = 'VN280' and MB.TamBay >= CB.DoDai

--14) Cho biết các chuyến bay có thể được thực hiện bởi máy bay Airbus A320.

select distinct CB.*
from CHUYENBAY CB, MAYBAY MB
where MB.Loai = 'Airbus A320' and CB.DoDai <= MB.TamBay

--15) Cho biết tên của các phi công lái máy bay Boeing.

select distinct NV.Ten as [Tên của các phi công lái máy bay Boeing]
from NHANVIEN NV
join CHUNGNHAN L on NV.MaNV = L.MaNV
join MAYBAY MB on L.MaMB = MB.MaMB
where MB.Loai like '%Boeing%'

--16) Với mỗi loại máy bay có phi công lái cho biết mã số, loại máy báy và tổng số phi
--công có thể lái loại máy bay đó.
--17) Giả sử một hành khách muốn đi thẳng từ ga A đến ga B rồi quay trở về ga A. Cho
--biết các đường bay nào có thể đáp ứng yêu cầu này.
select
    CB1.GaDi GaA,
    CB1.GaDen GaB,
    CB1.MaCB ChuyenBayDi,
    CB2.MaCB ChuyenBayVe
from CHUYENBAY CB1
join CHUYENBAY CB2 on CB1.GaDi = CB2.GaDen and CB1.GaDen = CB2.GaDi;