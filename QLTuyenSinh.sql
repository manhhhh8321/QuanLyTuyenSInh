create database qltuyensinh
 use qltuyensinh
go

create table TaiKhoan (
	MaNguoiDung char(10) primary key,
	TenNguoiDung varchar(255) not null,
	MatKhau varchar(255) not null,
	role varchar(20) not null
)

insert into TaiKhoan values ('A02', 'abcd', 'abcd', 'user')

select * from TaiKhoan
where MaNguoiDung = 'a' and TenNguoiDung = 'b'

Create table [HOSOTHISINH] (
	[MaTS] Char(10) NOT NULL,
	[MaDTUT] Char(10) NOT NULL,
	[MaKhoi] Char(10) NOT NULL,
	[MaDanToc] Char(10) NOT NULL,
	[MaKVUT] Char(10) NOT NULL,
	[HotenTS] Varchar(255) NOT NULL,
	[NgaySinh] Datetime NOT NULL,
	[GioiTinh] Char(255) NOT NULL,
	[SoCMND] Char(255) NOT NULL,
	[DaTrungTuyen] Char(255) NOT NULL,
	[DiemToan] Float NOT NULL,
	[DiemLy] Float NOT NULL,
	[DiemHoa] Float NOT NULL,
	[DiemNgoaiNgu] Float NOT NULL,
	[DiemVan] Float NOT NULL,
	[DiemSu] Float NOT NULL,
	[DiemDia] Float NOT NULL,
	[DiemGDCG] Float NOT NULL,
	[DiemSinh] Float NOT NULL,
Primary Key  ([MaTS])
) 
go

Create table [PHONGTHI] (
	[MaPhongThi] Char(10) NOT NULL,
	[MaDiaDiem] Char(10) NOT NULL,
	[GhiChu] Varchar(255) NOT NULL,
	[SoLuongThiSinh] Integer NOT NULL,
Primary Key  ([MaPhongThi])
) 
go

Create table [DIADIEMTHI] (
	[MaDiaDiem] Char(10) NOT NULL,
	[TenDiaDiem] Varchar(255) NOT NULL,
	[GhiChu] Varchar(255) NOT NULL,
Primary Key  ([MaDiaDiem])
) 
go

Create table [DANTOC] (
	[MaDanToc] Char(10) NOT NULL,
	[TenDanToc] Varchar(255) NOT NULL,
	[GhiChu] Varchar(255) NOT NULL,
Primary Key  ([MaDanToc])
) 
go

Create table [KHUVUCUUTIEN] (
	[MaKVUT] Char(10) NOT NULL,
	[TenKVUT] Varchar(255) NOT NULL,
	[GhiChu] Varchar(255) NOT NULL,
Primary Key  ([MaKVUT])
) 
go

Create table [DOITUONGUUTIEN] (
	[MaDTUT] Char(10) NOT NULL,
	[TenDTUT] Varchar(255) NOT NULL,
	[GhiChu] Varchar(255) NOT NULL,
Primary Key  ([MaDTUT])
) 
go

Create table [KHOIXETTUYEN] (
	[MaKhoi] Char(10) NOT NULL,
	[TenKhoi] Varchar(255) NOT NULL,
	[GhiChu] Varchar(255) NOT NULL,
Primary Key  ([MaKhoi])
) 
go

Create table [NGANH] (
	[MaNganh] Char(10) NOT NULL,
	[MaKhoi] Char(10) NOT NULL,
	[TenNganh] Varchar(255) NOT NULL,
Primary Key  ([MaNganh])
) 
go

Create table [PHONGTHI_THISINH] (
	[MaTS] Char(10) NOT NULL,
	[MaPhongThi] Char(10) NOT NULL,
	[SoPhongThi] Integer NOT NULL,
Primary Key  ([MaTS],[MaPhongThi])
) 
go

Alter table [PHONGTHI_THISINH] add  foreign key([MaTS]) references [HOSOTHISINH] ([MaTS]) 
go
Alter table [PHONGTHI_THISINH] add  foreign key([MaPhongThi]) references [PHONGTHI] ([MaPhongThi]) 
go
Alter table [PHONGTHI] add  foreign key([MaDiaDiem]) references [DIADIEMTHI] ([MaDiaDiem]) 
go
Alter table [HOSOTHISINH] add  foreign key([MaDanToc]) references [DANTOC] ([MaDanToc]) 
go
Alter table [HOSOTHISINH] add  foreign key([MaKVUT]) references [KHUVUCUUTIEN] ([MaKVUT]) 
go
Alter table [HOSOTHISINH] add  foreign key([MaDTUT]) references [DOITUONGUUTIEN] ([MaDTUT]) 
go
Alter table [HOSOTHISINH] add  foreign key([MaKhoi]) references [KHOIXETTUYEN] ([MaKhoi]) 
go
Alter table [NGANH] add  foreign key([MaKhoi]) references [KHOIXETTUYEN] ([MaKhoi]) 
go