-- nama : Ruhasdi
-- nim : 24241016
-- kelas : A
-- modul: 3

-- Nilai Literal, Operator Matematika, Perbandingan,
-- Fungsi Matematika dan Tanggal (Date)
-- Klausal WHERE , LIKE

-- Praktek 1
-- Menggunakan nilai litelar pada SELECT
SELECT 77;

-- Praktik 2
-- Menggunakan SELECT untuk menampilkan nilai tipe data yang berbeda
SELECT 77 as angka, true AS nilai_logika, 'PTI' As teks;


-- NULL
-- berarti tidak memiliki nilai apapun atau kosong
-- Praktek 3
-- Menggunakan SELECT untuk menampilkan NULL
SELECT NULL AS kosong;

-- Operator Matematika
-- Praktek 4
SELECT 5%2 AS sisa_bagi, 5/2 AS hasil_bagi_1, 5 DIV 2 AS hasil_bagi_2;

-- Praktek latihan
SELECT 4*2;
SELECT (4*8)%7;
SELECT (4*8) MOD 7;
-- Praktek 5
-- menggunakan database
USE pti_mart;

-- operator matematika untuk dua kolom dalam tabel penjualan
SELECT qty*harga AS total_beli FROM tr_penjualan;
-- Praktek 6
-- ambil data hasil perkalian kolom qty dan harga simpn dalam kolom total beli

-- Operator perbandingan
-- Praktek 7
SELECT 5=5, 5!=5, 5!=4;
SELECT 1 = true;
SELECT 1 = false;
SELECT 5 >= 5;
SELECT 5.2 = 5.20000;
SELECT NULL = 1;
SELECT NULL = NULL;

-- Fungsi
-- Proses yang memiliki nama, bukan simbol seperti operator
-- Praktek 8
SELECT POW(3,2), ROUND(3.14), ROUND(3.54), ROUND(3.155, 1),
ROUND(3.155,2), FLOOR(4.28), FLOOR(4.78), CEILING(4.39),CEILING (4.55);

-- Praktek 9
SELECT NOW(), YEAR('2022-05-03'),
ROUND (DATEDIFF(NOW(), '2022-05-03')),
DAY('2022-05-03');
-- Latihan Mandiri
SELECT DATEDIFF('2022-07-23', NOW());
SELECT YEAR('2022-07-23');
SELECT MONTH('2022-07-23');
SELECT DAY('2022-07-23');
SELECT YEAR(NOW());

-- praktik10
SELECT datediff(now(), tgl_transaksi) FROM tr_penjualan

-- WHERE
-- untuk memfilter atau menyaring data

-- praktik11
-- ambil semua data pada kolom nama produk dan qty, yang qty > 3
SELECT nama_produk, qty
FROM tr_penjualan
WHERE qty > 3;

-- Ambil semua data pada kolom produk dan harga, harga max 10000
SELECT nama_produk, harga
FROM tr_penjualan
WHERE harga <= 10000

-- praktik12
-- multi kriteria dalam WHERE
SELECT nama_produk, qty, tgl_transaksi FROM tr_penjualan;
-- ambil semua produk dan qty yang qty > 3 dan transaksi pada bulan 6
SELECT nama_produk, qty
FROM tr_penjualan
WHERE qty > 3 AND MONTH(tgl_transaksi) = 6;

-- praktik13
-- WHERE dengan kriteria teks
-- ambil semua nama_produk yang bernama 'Flashdisk DQLab 32 GB'
SELECT nama_produk, qty
FROM tr_penjualan
WHERE nama_produk = 'Flashdisk DQLab 32 GB'

--  praktik14
-- WHERE dengan operator LIKE
-- Ambil semua nam_peoduk yang namanya berawalan huruf 'f'
SELECT nama_produk FROM tr_penjualan
WHERE nama_produk LIKE 'f'
-- Latihan mandiri
SELECT nama_produk 
FROM tr_penjualan_dqlab 
WHERE nama_produk LIKE '_a%';
SELECT kategori_produk 
FROM ms_produk_dqlab 
WHERE kategori_produk LIKE '%t%';
SELECT kategori_produk 
FROM ms_produk_dqlab 
WHERE kategori_produk LIKE '%un%';

-- paktik15
-- WHERE dengan operator perbandingan (AND, OR, XOR)
-- ambil semua produk yang berawalan huruf 'f' AND qty > 2
SELECT nama_ptoduk, qty FROM tr_penjualan
WHERE nama_produk LIKE 'f' AND qty > 2;

-- praktik16
-- ambil semua produk yang berawalan huruf 'f' OR qty > 2
SELECT nama_produk FROM tr_penjualan_dqlab
WHERE nama_produk LIKE 'f' OR qty > 2;









