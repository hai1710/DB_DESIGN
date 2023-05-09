

use QuanLyDiemThi;

create table GiaoVien(
MaGV varchar(20) primary key,
TenGV varchar(50),
SDT int
);

create table MonHoc(
MaMH varchar(20),
TenMH varchar(20),
MaGV varchar(20),
foreign key(MaGV) references GiaoVien(MaGV),
primary key(MaMH)
);

create table BangDiem(
MaHS varchar(20),
foreign key(MaHS) references HocSinh(MaHS),
MaMH varchar(20),
foreign key (MaMH) references MonHoc(MaMH),
DiemThi float,
NgayKT date,
primary key(MaHS,MaMH)
);
