-- Menggunakan database
USE pti_mart;

-- 1. Kolom kode_produk, nama_produk dari table ms_produk_dqlab
-- Disesuaikan dengan tabel kamu: produk (id_produk sebagai kode_produk)
SELECT id_produk AS kode_produk, nama_produk 
FROM produk;

-- 2. Seluruh kolom dari table tr_penjualan_dqlab
-- Disesuaikan dengan tabel yang ada: customer
SELECT * 
FROM customer;