CREATE TABLE penggunaan (
id_penggunaan VARCHAR (20),
id_pelanggan VARCHAR (20),
bulan VARCHAR (20),
tahun VARCHAR (20),
meter_awal INT,
meter_akhir INT,
PRIMARY KEY (id_penggunaan)
);

CREATE TABLE pelanggan (
id_pelanggan VARCHAR (20),
username VARCHAR (50),
password VARCHAR (50),
nomor_kwh VARCHAR (20),
nama_pelanggan VARCHAR (100),
alamat TEXT,
id_tarif VARCHAR (20),
PRIMARY KEY (id_pelanggan)
);

create type status as enum ('Selesai','Belum');

CREATE TABLE tagihan (
id_tagihan VARCHAR (20),
id_penggunaan VARCHAR (20),
id_pelanggan VARCHAR (20),
bulan VARCHAR (20),
tahun VARCHAR (20),
jumlah_meter INT,
status status,
PRIMARY KEY (id_tagihan)
);

CREATE TABLE tarif (
id_tarif VARCHAR (20),
daya INT,
tarifperkwh INT,
PRIMARY KEY (id_tarif)
);

CREATE TABLE pembayaran (
id_pembayaran VARCHAR (20),
id_pelanggan VARCHAR (20),
tanggal_pembayaran DATE,
bulan_bayar VARCHAR (20),
biaya_admin INT,
total_bayar INT,
id_admin VARCHAR (20),
PRIMARY KEY (id_pembayaran)
);

CREATE TABLE admin (
id_admin VARCHAR (20),
username VARCHAR (50),
password VARCHAR (50),
nama_admin VARCHAR (100),
id_level VARCHAR (20),
PRIMARY KEY (id_admin)
);

CREATE TABLE level (
id_level VARCHAR (20),
nama_level VARCHAR (100),
PRIMARY KEY (id_level)
);