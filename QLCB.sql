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
SELECT *
FROM ChuyenBay
WHERE GaDen = 'DAD';
--2) Cho biết các loại máy bay có tầm bay lớn hơn 10,000km.
SELECT Loai
FROM MayBay
WHERE TamBay > 10000;
--3) Tìm các nhân viên có lương nhỏ hơn 10,000.
SELECT *
FROM NhanVien
WHERE Luong < 10000;
--4) Cho biết các chuyến bay có độ dài đường bay nhỏ hơn 10.000km và lớn hơn
--8.000km.
SELECT *
FROM ChuyenBay
WHERE DoDai < 10000 AND DoDai > 8000;
--5) Cho biết các chuyến bay xuất phát từ Sài Gòn (SGN) đi Ban Mê Thuộc (BMV).
SELECT *
FROM ChuyenBay
WHERE GaDi = 'SGN' AND GaDen = 'BMV';
--6) Có bao nhiêu chuyến bay xuất phát từ Sài Gòn (SGN).
SELECT COUNT(*) AS SoChuyenBayTuSGN
FROM ChuyenBay
WHERE GaDi = 'SGN';
--7) Có bao nhiêu loại máy báy Boeing.
SELECT COUNT(DISTINCT Loai) AS SoLoaiMayBayBoeing
FROM MayBay
WHERE Loai LIKE '%Boeing%';
--8) Cho biết tổng số lương phải trả cho các nhân viên.
SELECT SUM(Luong) AS TongLuongNhanVien
FROM NhanVien;
--9) Cho biết mã số của các phi công lái máy báy Boeing.
SELECT DISTINCT CN.MaNV
FROM ChungNhan AS CN
JOIN MayBay AS MB ON CN.MaMB = MB.MaMB
WHERE MB.Loai LIKE '%Boeing%';
--10) Cho biết các nhân viên có thể lái máy bay có mã số 747.
SELECT NV.*
FROM NhanVien AS NV
JOIN ChungNhan AS CN ON NV.MaNV = CN.MaNV
WHERE CN.MaMB = '747';
--11) Cho biết mã số của các loại máy bay mà nhân viên có họ Nguyễn có thể lái.
SELECT DISTINCT CN.MaMB
FROM ChungNhan AS CN
JOIN NhanVien AS NV ON CN.MaNV = NV.MaNV
WHERE NV.Ten LIKE N'Nguyễn %';
--12) Cho biết mã số của các phi công vừa lái được Boeing vừa lái được Airbus.
SELECT DISTINCT CN.MaNV
FROM ChungNhan AS CN
JOIN MayBay AS MB ON CN.MaMB = MB.MaMB
WHERE MB.Loai LIKE '%Boeing%'
INTERSECT
SELECT DISTINCT CN2.MaNV
FROM ChungNhan AS CN2
JOIN MayBay AS MB2 ON CN2.MaMB = MB2.MaMB
WHERE MB2.Loai LIKE '%Airbus%';
--13) Cho biết các loại máy bay có thể thực hiện chuyến bay VN280.
SELECT DISTINCT MB.Loai
FROM MayBay AS MB, ChuyenBay AS CB
WHERE CB.MaCB = 'VN280' AND MB.TamBay >= CB.DoDai;
--14) Cho biết các chuyến bay có thể được thực hiện bởi máy bay Airbus A320.
SELECT DISTINCT CB.*
FROM ChuyenBay AS CB, MayBay AS MB
WHERE MB.Loai = 'Airbus A320' AND CB.DoDai <= MB.TamBay;
--15) Cho biết tên của các phi công lái máy bay Boeing.
SELECT DISTINCT NV.Ten
FROM NhanVien AS NV
JOIN ChungNhan AS CN ON NV.MaNV = CN.MaNV
JOIN MayBay AS MB ON CN.MaMB = MB.MaMB
WHERE MB.Loai LIKE '%Boeing%';
--16) Với mỗi loại máy bay có phi công lái cho biết mã số, loại máy báy và tổng số phi
--công có thể lái loại máy bay đó.
SELECT
    MB.MaMB,
    MB.Loai,
    COUNT(CN.MaNV) AS TongSoPhiCong
FROM
    MayBay AS MB
JOIN
    ChungNhan AS CN ON MB.MaMB = CN.MaMB
GROUP BY
    MB.MaMB, MB.Loai
HAVING
    COUNT(CN.MaNV) > 0
ORDER BY
    MB.Loai;
--	17) Giả sử một hành khách muốn đi thẳng từ ga A đến ga B rồi quay trở về ga A. Cho
--biết các đường bay nào có thể đáp ứng yêu cầu này.
SELECT
    CB1.GaDi AS GaA,
    CB1.GaDen AS GaB,
    CB1.MaCB AS ChuyenBayDi,
    CB2.MaCB AS ChuyenBayVe
FROM
    ChuyenBay AS CB1
JOIN
    ChuyenBay AS CB2 ON CB1.GaDi = CB2.GaDen AND CB1.GaDen = CB2.GaDi;
--Gom nhóm:
--18) Với mỗi ga có chuyến bay xuất phát từ đó cho biết có bao nhiêu chuyến bay khởi
--hành từ ga đó.
SELECT
    GaDi,
    COUNT(MaCB) AS SoChuyenBayKhoiHanh
FROM
    ChuyenBay
GROUP BY
    GaDi;
--19) Với mỗi ga có chuyến bay xuất phát từ đó cho biết tổng chi phí phải trả cho phi công
--lái các chuyến bay khởi hành từ ga đó.
SELECT
    CB.GaDi,
    SUM(DISTINCT NV.Luong) AS TongLuongPhiCong
FROM
    ChuyenBay AS CB
JOIN
    ChungNhan AS CN ON CB.DoDai <= (SELECT TamBay FROM MayBay WHERE MaMB = CN.MaMB) -- Giả định máy bay có thể bay chuyến đó
JOIN
    NhanVien AS NV ON CN.MaNV = NV.MaNV
GROUP BY
    CB.GaDi;
--20) Với mỗi địa điểm xuất phát cho biết có bao nhiêu chuyến bay có thể khởi hành trước
--12:00.
SELECT
    GaDi,
    COUNT(MaCB) AS SoChuyenBayTruoc12h
FROM
    ChuyenBay
WHERE
    STRFTIME('%H:%M', GioDi) < '12:00' -- Sử dụng STRFTIME cho SQLite, hoặc HOUR(GioDi) cho SQL Server, EXTRACT(HOUR FROM GioDi) cho PostgreSQL/Oracle
GROUP BY
    GaDi;
--21) Cho biết mã số của các phi công chỉ lái được 3 loại máy bay.
SELECT
    MaNV
FROM
    ChungNhan
GROUP BY
    MaNV
HAVING
    COUNT(MaMB) = 3;
--22) Với mỗi phi công có thể lái nhiều hơn 3 loại máy bay, cho biết mã số phi công và
--tầm bay lớn nhất của các loại máy bay mà phi công đó có thể lái.
SELECT
    MaNV
FROM
    ChungNhan
GROUP BY
    MaNV
HAVING
    COUNT(MaMB) = 3;
--23) Với mỗi phi công cho biết mã số phi công và tổng số loại máy bay mà phi công đó
--có thể lái.
SELECT
    MaNV,
    COUNT(MaMB) AS TongSoLoaiMayBay
FROM
    ChungNhan
GROUP BY
    MaNV;
--24) Cho biết mã số của các phi công có thể lái được nhiều loại máy bay nhất.
SELECT
    MaNV
FROM
    ChungNhan
GROUP BY
    MaNV
HAVING
    COUNT(MaMB) = (SELECT MAX(SoLoai) FROM (SELECT COUNT(MaMB) AS SoLoai FROM ChungNhan GROUP BY MaNV));
--25) Cho biết mã số của các phi công có thể lái được ít loại máy bay nhất.
SELECT
    MaNV
FROM
    ChungNhan
GROUP BY
    MaNV
HAVING
    COUNT(MaMB) = (SELECT MIN(SoLoai) FROM (SELECT COUNT(MaMB) AS SoLoai FROM ChungNhan GROUP BY MaNV));
--Truy vấn lồng:
--26) Tìm các nhân viên không phải là phi công.
SELECT *
FROM NhanVien
WHERE MaNV NOT IN (SELECT DISTINCT MaNV FROM ChungNhan);
--27) Cho biết mã số của các nhân viên có lương cao nhất.
SELECT MaNV
FROM NhanVien
WHERE Luong = (SELECT MAX(Luong) FROM NhanVien);
--28) Cho biết tổng số lương phải trả cho các phi công.
SELECT SUM(Luong) AS TongLuongPhiCong
FROM NhanVien
WHERE MaNV IN (SELECT DISTINCT MaNV FROM ChungNhan);
--29) Tìm các chuyến bay có thể được thực hiện bởi tất cả các loại máy bay Boeing.
SELECT CB.*
FROM ChuyenBay AS CB
WHERE NOT EXISTS (
    SELECT 1
    FROM MayBay AS MB
    WHERE MB.Loai LIKE '%Boeing%'
    AND MB.TamBay < CB.DoDai
);
--30) Cho biết mã số của các máy bay có thể được sử dụng để thực hiện chuyến bay từ Sài
--Gòn (SGN) đến Huế (HUI).
SELECT DISTINCT MB.MaMB
FROM MayBay AS MB
JOIN ChuyenBay AS CB ON MB.TamBay >= CB.DoDai
WHERE CB.GaDi = 'SGN' AND CB.GaDen = 'HUI';
--31) Tìm các chuyến bay có thể được lái bởi các phi công có lương lớn hơn 100,000.
SELECT DISTINCT CB.*
FROM ChuyenBay AS CB
JOIN MayBay AS MB ON CB.DoDai <= MB.TamBay -- Chuyến bay có thể được thực hiện bởi máy bay này
JOIN ChungNhan AS CN ON MB.MaMB = CN.MaMB
JOIN NhanVien AS NV ON CN.MaNV = NV.MaNV
WHERE NV.Luong > 100000;
--32) Cho biết tên các phi công có lương nhỏ hơn chi phí thấp nhất của đường bay từ Sài
--Gòn (SGN) đến Buôn Mê Thuộc (BMV).
SELECT NV.Ten
FROM NhanVien AS NV
WHERE NV.MaNV IN (SELECT DISTINCT MaNV FROM ChungNhan) -- Đảm bảo là phi công
AND NV.Luong < (SELECT MIN(ChiPhi) FROM ChuyenBay WHERE GaDi = 'SGN' AND GaDen = 'BMV');
--33) Cho biết mã số của các phi công có lương cao nhất.
SELECT MaNV
FROM NhanVien
WHERE MaNV IN (SELECT DISTINCT MaNV FROM ChungNhan)
AND Luong = (SELECT MAX(Luong) FROM NhanVien WHERE MaNV IN (SELECT DISTINCT MaNV FROM ChungNhan));
--34) Cho biết mã số của các nhân viên có lương cao thứ nhì.
SELECT MaNV
FROM NhanVien
WHERE Luong = (
    SELECT MAX(Luong)
    FROM NhanVien
    WHERE Luong < (SELECT MAX(Luong) FROM NhanVien)
);
--35) Cho biết mã số của các nhân viên có lương cao thứ nhất hoặc thứ nhì.
SELECT MaNV
FROM NhanVien
WHERE Luong IN (
    SELECT DISTINCT Luong
    FROM NhanVien
    ORDER BY Luong DESC
    LIMIT 2 -- MySQL/PostgreSQL
    -- FETCH FIRST 2 ROWS ONLY; -- Oracle 12c+
    -- SELECT TOP 2 Luong FROM NhanVien ORDER BY Luong DESC; -- SQL Server
);
--36) Cho biết tên và lương của các nhân viên không phải là phi công và có lương lớn hơn
--lương trung bình của tất cả các phi công.
SELECT NV.TenNV, NV.Luong
FROM NhanVien AS NV
WHERE NV.MaNV NOT IN (SELECT DISTINCT MaNV FROM ChungNhan) 
AND NV.Luong > (
    SELECT AVG(Luong)
    FROM NhanVien
    WHERE MaNV IN (SELECT DISTINCT MaNV FROM ChungNhan)
);
--37) Cho biết tên các phi công có thể lái các máy bay có tầm bay lớn hơn 4,800km nhưng
--không có chứng nhận lái máy bay Boeing.
SELECT DISTINCT NV.Ten
FROM NhanVien AS NV
JOIN ChungNhan AS CN ON NV.MaNV = CN.MaNV
JOIN MayBay AS MB ON CN.MaMB = MB.MaMB
WHERE MB.TamBay > 4800
AND NV.MaNV NOT IN (
    SELECT DISTINCT CN2.MaNV
    FROM ChungNhan AS CN2
    JOIN MayBay AS MB2 ON CN2.MaMB = MB2.MaMB
    WHERE MB2.Loai LIKE '%Boeing%'
);
--38) Cho biết tên các phi công lái ít nhất 3 loại máy bay có tầm bay xa hơn 3200km.
--Kết ngoài:
SELECT NV.Ten
FROM NhanVien AS NV
JOIN ChungNhan AS CN ON NV.MaNV = CN.MaNV
JOIN MayBay AS MB ON CN.MaMB = MB.MaMB
WHERE MB.TamBay > 3200
GROUP BY NV.MaNV, NV.Ten
HAVING COUNT(DISTINCT MB.MaMB) >= 3;
--39) Với mỗi nhân viên cho biết mã số, tên nhân viên và tổng số loại máy bay mà nhân
--viên đó có thể lái.
SELECT
    NV.MaNV,
    NV.Ten,
    COUNT(CN.MaMB) AS TongSoLoaiMayBayCoTheLai
FROM
    NhanVien AS NV
LEFT JOIN
    ChungNhan AS CN ON NV.MaNV = CN.MaNV
GROUP BY
    NV.MaNV, NV.Ten
ORDER BY
    NV.MaNV;
--40) Với mỗi nhân viên cho biết mã số, tên nhân viên và tổng số loại máy bay Boeing mà
--nhân viên đó có thể lái.
SELECT
    NV.MaNV,
    NV.Ten,
    COUNT(CASE WHEN MB.Loai LIKE '%Boeing%' THEN CN.MaMB ELSE NULL END) AS TongSoLoaiMayBayBoeing
FROM
    NhanVien AS NV
LEFT JOIN
    ChungNhan AS CN ON NV.MaNV = CN.MaNV
LEFT JOIN
    MayBay AS MB ON CN.MaMB = MB.MaMB
GROUP BY
    NV.MaNV, NV.Ten
ORDER BY
    NV.MaNV;
--41) Với mỗi loại máy bay cho biết loại máy bay và tổng số phi công có thể lái loại máy
--bay đó.
SELECT
    MB.Loai,
    COUNT(CN.MaNV) AS TongSoPhiCong
FROM
    MayBay AS MB
LEFT JOIN
    ChungNhan AS CN ON MB.MaMB = CN.MaMB
GROUP BY
    MB.Loai
ORDER BY
    MB.Loai;
--42) Với mỗi loại máy bay cho biết loại máy bay và tổng số chuyến bay không thể thực
--hiện bởi loại máy bay đó.

--43) Với mỗi loại máy bay cho biết loại máy bay và tổng số phi công có lương lớn hơn
--100,000 có thể lái loại máy bay đó.

--44) Với mỗi loại máy bay có tầm bay trên 3200km, cho biết tên của loại máy bay và
--lương trung bình của các phi công có thể lái loại máy bay đó.

--45) Với mỗi loại máy bay cho biết loại máy bay và tổng số nhân viên không thể lái loại
--máy bay