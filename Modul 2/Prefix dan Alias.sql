-- Nama : Ruhasdi
-- nim : 24241016
-- kelas : A
-- modul : 2 

-- Menggunakan database
DROP DATABASE IF EXISTS pti_mart;
CREATE DATABASE pti_mart;
USE pti_mart; -- USE nama_db:

-- Tabel customer (Case 1)
CREATE TABLE customer (
    id_customer INT AUTO_INCREMENT PRIMARY KEY,
    nama_customer VARCHAR(100),
    alamat VARCHAR(255)
);

-- DATA CASE 1
INSERT INTO customer (nama_customer, alamat) VALUES
('Pelanggan Non Member', '-'),
('Eva Noviani, S.H.', 'Villa Sempalan No. 67 - Kota B'),
('Hadi Goh', 'Villa Sempalan No. 11 - Kota B'),
('Utang Handoko', 'Villa Sempalan No. 1 - Kota B'),
('Jekclono Sukarman', 'Villa Permata Intan Berkilan Blok C1'),
('Tommy Sinaga', 'Villa Permata Intan Berkilan Blok A2'),
('Irwan Setiawan', 'Villa Gunung Sembul Blok A1'),
('Agus Cahyonno', 'Villa Gunung Sembul Blok A1'),
('Yunia Sihot', 'Villa Bukit Sejahtera Gang Sinar No. 3'),
('Ir. Ita Zatprajha', 'Villa Bukit Sejahtera Gang Kayu No. 6'),
('Djoko Wardoyo, Drs.', 'Villa Bukit Sejahtera Blok A1');

-- Tabel produk (Case 2)
CREATE TABLE produk (
    id_produk INT AUTO_INCREMENT PRIMARY KEY,
    nama_produk VARCHAR(100),
    harga INT
);

-- DATA CASE 2
INSERT INTO produk (nama_produk, harga) VALUES
('Kotak Pensil DQLab', 62500),
('Flashdisk DQLab 64 GB', 55000),
('Gift Voucher DQLab 100rb', 100000),
('Flashdisk DQLab 32 GB', 40000),
('Gift Voucher DQLab 250rb', 250000),
('Pulpen Multifunction + Laser DQLab', 92500),
('Tas Travel Organizer Digital', 48000),
('Gantungan Kunci DQLab', 15800),
('Buku Planner Agenda DQLab', 92000),
('Sticky Notes DQLab 500 sheets', 55000);

-- mengambil 1 kolom dari 1 tabel
-- mengambil kolom nama produk darri tabel produk
SELECT nama_produk FROM produk ;

--  mengambil > dari 1 tabel
-- mengambil kolom nama_produk dan harga dari tabel produk 
SELECT nama_produk, harga FROM produk; 

-- mengambi semua kolom 
-- PERBAIKAN: pproduk -> produk
SELECT * FROM produk;

-- PREFIX dan ALIAS 
-- PREFIX 
-- bagian nama objek database yang levelnya lebih tinggi

-- full hiraki nama_db.nama_table.nama_column  
SELECT produk.nama_produk FROM produk; 

-- ALIAS 
-- nama pengganti sementara dari nama objek database
-- mengganti sementara nama kolom nama_produk dengan 'np'
SELECT nama_produk as np FROM produk; 

-- menbgganti nama tabel sementara 
SELECT nama_produk FROM  produk  as tp; 

-- menggunakan ALIAS  dan FREFIX bersamaan 
SELECT tp.nama_produk as np FROM produk as tp;

-- Case 1
SELECT nama_customer, alamat FROM customer;

-- Case 2
SELECT nama_produk, harga FROM produk;