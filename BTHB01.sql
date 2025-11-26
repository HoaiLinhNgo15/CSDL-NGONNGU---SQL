CREATE DATABASE QUANLYDEAN 

GO

USE QUANLYDEAN

GO

CREATE TABLE CHUYENMON
(
	MaTDCM char(3) PRIMARY KEY NOT NULL, 
	TenTDCM nvarchar(100) not null,
);
GO

SELECT *
FROM CHUYENMON

GO


INSERT INTO CHUYENMON VALUES ('A01',N'Kỹ sư Công nghệ thông tin');
INSERT INTO CHUYENMON VALUES ('A02',N'Kỹ sư Mạng máy tính và truyền thông');
INSERT INTO CHUYENMON VALUES ('A03',N'Kỹ sư Công nghệ phần mềm');
INSERT INTO CHUYENMON VALUES ('A04',N'Kỹ sư Hệ thống thông tin');

INSERT INTO CHUYENMON VALUES ('B01',N'Kỹ sư Nông nghiệp');
INSERT INTO CHUYENMON VALUES ('C01',N'Cữ nhân Kế toán');
INSERT INTO CHUYENMON VALUES ('C02',N'Cữ nhân Quản trị doanh nghiệp');

INSERT INTO CHUYENMON VALUES ('D01',N'Kỹ thuật viên thiết kế, cài đặt mạng');
INSERT INTO CHUYENMON VALUES ('D02',N'Kỹ thuật viên thiết kế đồ họa');
INSERT INTO CHUYENMON VALUES ('D03',N'Kỹ thuật viên thu thập số liệu');

GO

CREATE TABLE NHANVIEN (
	MaNV char(6) PRIMARY KEY not null, 
	HoNV nvarchar(20) not null, 
	TenLotNV nvarchar(20) not null, 
	TenNV nvarchar (20) not null, 
	NgaySinh datetime ,
	Phai nvarchar(3), 
	DiaChiNV nvarchar(100), 
	Hesoluong dec(4,2), 
	MaTDCM char(3) CONSTRAINT RB_TDCM FOREIGN KEY (MaTDCM) REFERENCES CHUYENMON(MaTDCM), 
);
GO

SELECT *
FROM NHANVIEN

GO

INSERT INTO NHANVIEN VALUES ('A1.001',N'Nguyễn', N'Thanh', N'Tùng', '08/12/1965', N'Nam', N'Trà Vinh', '4.66', 'A01');
INSERT INTO NHANVIEN VALUES ('A1.002',N'Nguyễn', N'Mạnh', N'Hùng', '09/15/1962', N'Nam', N'Vĩnh Long', '4.33', 'A02');

INSERT INTO NHANVIEN VALUES ('A1.003',N'Trần', N'Thanh', N'Tâm', '07/31/1972', N'Nữ', N'Vĩnh Long', '3.09', 'A03');
INSERT INTO NHANVIEN VALUES ('A1.004',N'Bùi', N'Ngọc', N'Hằng', '07/19/1987', N'Nữ', N'Cần Thơ', '3.00', 'A04');

INSERT INTO NHANVIEN VALUES ('A1.005',N'Lê', N'Quỳnh', N'Như', '07/20/1971', N'Nữ', N'Trà Vinh', '4.33', 'B01');
INSERT INTO NHANVIEN VALUES ('A1.006',N'Trần', N'Thị', N'Hương', '11/10/1975', N'Nữ', N'Cần Thơ', '3.99', 'C01');

INSERT INTO NHANVIEN VALUES ('A1.007',N'Trần', N'Hồng', N'Quang', '04/08/1979', N'Nữ', N'Trà Vinh', '3.66', 'C02');
INSERT INTO NHANVIEN VALUES ('A1.008',N'Phạm', N'Văn', N'Vinh', '11/10/1985', N'Nam', N'Vĩnh Long', '2.67', 'D01');

INSERT INTO NHANVIEN VALUES ('A2.001',N'Trần', N'Hồng', N'Thanh', '12/8/1967', N'Nữ', N'Trà Vinh', '4.66', 'D02');
INSERT INTO NHANVIEN VALUES ('A2.002',N'Nguyễn', N'Mạnh', N'Hùng', '09/15/1962', N'Nam', N'Vĩnh Long', '4.33', 'D03');
INSERT INTO NHANVIEN VALUES ('A2.003',N'Trần', N'Thanh', N'Hưng', '07/31/1972', N'Nam', N'Vĩnh Long', '4.33', 'A01');

INSERT INTO NHANVIEN VALUES ('A2.004',N'Lê', N'Ngọc', N'Hằng', '07/19/1987', N'Nữ', N'Trà Vinh', '3.00', 'A02');
INSERT INTO NHANVIEN VALUES ('A2.005',N'Lê', N'Quỳnh', N'Hương', '07/20/1971', N'Nữ', N'Trà Vinh', '3.33', 'A03');

INSERT INTO NHANVIEN VALUES ('A2.006',N'Phan', N'Thị', N'Hương', '11/10/1985', N'Nữ', N'Cần Thơ', '3.99', 'C02');
INSERT INTO NHANVIEN VALUES ('A2.007',N'Trần', N'Vinh', N'Quang', '04/08/1979', N'Nam', N'Cần Thơ', '3.66', 'D01');

INSERT INTO NHANVIEN VALUES ('A2.008',N'Trần', N'Văn', N'Anh', '11/10/1994', N'Nam', N'Trà Vinh', '3.33', 'D03');
INSERT INTO NHANVIEN VALUES ('A2.009',N'Phạm', N'Văn', N'Viễn', '11/10/1995', N'Nam', N'Trà Vinh', '3.33', 'D02');

INSERT INTO NHANVIEN VALUES ('A2.010',N'Lê', N'Vinh', N'Quang', '04/08/1979', N'Nam', N'Cần Thơ', '3.66', 'D01');
INSERT INTO NHANVIEN VALUES ('A2.011',N'Lê', N'Văn', N'Anh', '11/10/1994', N'Nam', N'Trà Vinh', '3.33', 'D03');
INSERT INTO NHANVIEN VALUES ('A2.012',N'Lê', N'Văn', N'Viễn', '11/10/1995', N'Nam', N'Trà Vinh', '3.33', 'D02');

GO 

CREATE TABLE PHONGBAN
(
	MaPB char(2) PRIMARY KEY NOT NULL, 
	TenPB nvarchar(100) NOT NULL, 
);

GO 
SELECT *
FROM PHONGBAN

GO

INSERT INTO PHONGBAN VALUES('KT', N'Kỹ thuật');
INSERT INTO PHONGBAN VALUES('KD', N'Kinh doanh');
INSERT INTO PHONGBAN VALUES('SX', N'Sản xuất');

GO

CREATE TABLE NHIEMVU 
(
	MaNhiemVu char(2) PRIMARY KEY, 
	TenNhiemVu nvarchar(50) NOT NULL, 
);
 GO 

 select *
 from NHIEMVU
 go

 INSERT INTO NHIEMVU VALUES('A1', N'Tổ trưởng tổ kỹ thuật');
 INSERT INTO NHIEMVU VALUES('A2', N'Phó Tổ trưởng tổ kỹ thuật');

 INSERT INTO NHIEMVU VALUES('A3', N'Tổ trưởng tổ sản xuất');
 INSERT INTO NHIEMVU VALUES('A4', N'Phó Tổ trưởng tổ sản xuất');

 INSERT INTO NHIEMVU VALUES('A5', N'Tổ trưởng tổ kinh doanh');
 INSERT INTO NHIEMVU VALUES('A6', N'Phó Tổ trưởng tổ kinh doanh');

 INSERT INTO NHIEMVU VALUES('B1', N'Kỹ thuật viên thiết kế, cài đặt mạng');
 INSERT INTO NHIEMVU VALUES('B2', N'Kỹ thuật viên thiết kế đồ họa');
 INSERT INTO NHIEMVU VALUES('B3', N'Kỹ thuật viên thu thập số liệu');

 GO

 CREATE TABLE NHAN_NHIEMVU
 (
	MaNV char(6), ---KHÓA NGOẠI THAM CHIẾU ĐẾN BẢNG NHANVIEN
	MaPB char(2), ---KHÓA NGOẠI THAM CHIẾU ĐẾN BANGR PHONGBAN
	MaNhiemVu char(2), ---KHÓA NGOẠI THAM CHIẾU ĐÊNS BẢNG NHIEMVU
	NgayNhanNhiemVu date DEFAULT GETDATE(), ---RÀNG BUỘC LÀ NGÀY CỦA HỆ THỐNG LÚC NHẬP DỮ LIỆU
	NgayKetThuc date DEFAULT NULL, ---RÀNG BUỘC NULL LÀ CHƯA CÓ NGÀY KẾT THÚC
	CONSTRAINT RB_NV_PB_NV PRIMARY KEY (MaNV, MaPB, MaNhiemVu), 
	CONSTRAINT RB_MaNV FOREIGN KEY(MaNV) REFERENCES NHANVIEN(MaNV), 
	CONSTRAINT RB_MaPB FOREIGN KEY(MaPB) REFERENCES PHONGBAN(MaPB), 
	CONSTRAINT RB_MaNhiemVu FOREIGN KEY(MaNhiemVu) REFERENCES NHIEMVU(MaNhiemVu), 
);

GO
select *
from NHAN_NHIEMVU
GO


INSERT INTO NHAN_NHIEMVU(MaNV, MaPB, MaNhiemVu, NgayKetThuc) VALUES('A1.001', 'KT', 'A1',NULL);
INSERT INTO NHAN_NHIEMVU(MaNV, MaPB, MaNhiemVu, NgayKetThuc) VALUES('A1.002', 'KT', 'A2',NULL);
INSERT INTO NHAN_NHIEMVU(MaNV, MaPB, MaNhiemVu, NgayKetThuc) VALUES('A1.003', 'KT', 'A3',NULL);
INSERT INTO NHAN_NHIEMVU(MaNV, MaPB, MaNhiemVu, NgayKetThuc) VALUES('A1.004', 'SX', 'A4',NULL);
INSERT INTO NHAN_NHIEMVU(MaNV, MaPB, MaNhiemVu, NgayKetThuc) VALUES('A1.005', 'SX', 'A5',NULL);
INSERT INTO NHAN_NHIEMVU(MaNV, MaPB, MaNhiemVu, NgayKetThuc) VALUES('A1.006', 'SX', 'A6',NULL);
INSERT INTO NHAN_NHIEMVU(MaNV, MaPB, MaNhiemVu, NgayKetThuc) VALUES('A1.007', 'SX', 'A1',NULL);

INSERT INTO NHAN_NHIEMVU(MaNV, MaPB, MaNhiemVu, NgayKetThuc) VALUES('A2.001', 'KT', 'B2',NULL);
INSERT INTO NHAN_NHIEMVU(MaNV, MaPB, MaNhiemVu, NgayKetThuc) VALUES('A2.002', 'KT', 'B3',NULL);
INSERT INTO NHAN_NHIEMVU(MaNV, MaPB, MaNhiemVu, NgayKetThuc) VALUES('A2.003', 'KD', 'A2',NULL);
INSERT INTO NHAN_NHIEMVU(MaNV, MaPB, MaNhiemVu, NgayKetThuc) VALUES('A2.004', 'KD', 'A3',NULL);
INSERT INTO NHAN_NHIEMVU(MaNV, MaPB, MaNhiemVu, NgayKetThuc) VALUES('A2.005', 'KD', 'A4',NULL);
INSERT INTO NHAN_NHIEMVU(MaNV, MaPB, MaNhiemVu, NgayKetThuc) VALUES('A2.006', 'KD', 'A5',NULL);
INSERT INTO NHAN_NHIEMVU(MaNV, MaPB, MaNhiemVu, NgayKetThuc) VALUES('A2.007', 'KD', 'B1',NULL);
INSERT INTO NHAN_NHIEMVU(MaNV, MaPB, MaNhiemVu, NgayKetThuc) VALUES('A2.008', 'KD', 'B2',NULL);
INSERT INTO NHAN_NHIEMVU(MaNV, MaPB, MaNhiemVu, NgayKetThuc) VALUES('A2.009', 'KD', 'B3',NULL);

GO

CREATE TABLE DEAN
(
	MaDA char(2) PRIMARY KEY NOT NULL, 
	TenDA nvarchar(50), 
	DiaDiemDA nvarchar(50), 
	MaPhong char(2), 
	CONSTRAINT RB_MaPhong FOREIGN KEY(MaPhong) REFERENCES PHONGBAN(MaPB), 
	NgayBatDau datetime, 
	NgayKetThuc datetime, 
);

GO

INSERT INTO DEAN VALUES ('A1', N'Dự án IoT nông nghiệp', N'Trà Vinh', 'KT', '07/30/2019', '07/30/2020');
INSERT INTO DEAN VALUES ('B2', N'Dự án hạ tầng viễn thông', N'Vĩnh Long', 'KD', '07/01/2020', '04/07/2021');
INSERT INTO DEAN VALUES ('C3', N'Dự án phát triển phần mềm', N'Cần Thơ', 'SX', '05/02/2020', '12/30/2021');

GO

CREATE TABLE PHANCONG
(
	MaNV char(6), 
	MaDA char(2), 
	ThoiGian Decimal (3,1), 
	CONSTRAINT RB_NV_DA PRIMARY KEY (MaNV, MaDA), 
	CONSTRAINT RB_MNV FOREIGN KEY (MaNV) REFERENCES NHANVIEN(MaNV), 
	CONSTRAINT RB_MDA FOREIGN KEY (MaDA) REFERENCES DEAN(MaDA),
);

GO

INSERT INTO PHANCONG VALUES ('A1.001', 'A1', '32.5');
INSERT INTO PHANCONG VALUES ('A1.002', 'A1', '7.5');
INSERT INTO PHANCONG VALUES ('A1.003', 'B2', '40.0');
INSERT INTO PHANCONG VALUES ('A1.004', 'A1', '40.0');
INSERT INTO PHANCONG VALUES ('A1.005', 'B2', '20.0');
INSERT INTO PHANCONG VALUES ('A1.006', 'C3', '20.0');

INSERT INTO PHANCONG VALUES ('A1.007', 'A1', '30.0');
INSERT INTO PHANCONG VALUES ('A1.008', 'B2', '50.0');
INSERT INTO PHANCONG VALUES ('A2.001', 'C3', '20.0');
INSERT INTO PHANCONG VALUES ('A2.002', 'A1', '20.0');
INSERT INTO PHANCONG VALUES ('A2.003', 'B2', '20.0');

INSERT INTO PHANCONG VALUES ('A2.004', 'B2', '30.0');
INSERT INTO PHANCONG VALUES ('A2.005', 'A1', '50.0');
INSERT INTO PHANCONG VALUES ('A2.006', 'B2', '20.0');
INSERT INTO PHANCONG VALUES ('A2.007', 'C3', '30.0');
INSERT INTO PHANCONG VALUES ('A2.008', 'B2', '50.0');
INSERT INTO PHANCONG VALUES ('A2.009', 'C3', '20.0');

INSERT INTO PHANCONG VALUES ('A2.001', 'A1', '20.0');
INSERT INTO PHANCONG VALUES ('A1.002', 'C3', '10.0');
INSERT INTO PHANCONG VALUES ('A1.004', 'C3', '10.0');
INSERT INTO PHANCONG VALUES ('A2.004', 'C3', '10.0');
INSERT INTO PHANCONG VALUES ('A2.001', 'B2', '10.0');
INSERT INTO PHANCONG VALUES ('A2.002', 'C3', '10.0');
