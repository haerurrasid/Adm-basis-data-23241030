-- Nama: haerur rasid
-- Nim: 23241030
-- Kelas: A/4
-- Modul: Modul 1 - SELECT Statement, Prefic dan Alias

-- Membuat database baru
CREATE DATABASE IF NOT EXISTS PTI_MART;

USE PTI_MART;

-- melihat detail kolom dalam tiap tabel
DESCRIBE ms_pelanggan_dqlab;
DESCRIBE ms_produk_dqlab;
DESCRIBE tr_penjualan_dqlab;

-- select statement
-- mengambil satu kolom dalam tabel produk
SELECT nama_produk FROM ms_produk_dqlab;

-- mengambil lebih dari satu kolom dalam tabel produk
SELECT nama_produk, harga FROM ms_produk_dqlab;

-- mengambil semua kolom dalam tabel produk
SELECT * FROM ms_produk_dqlab;

-- select kolom kodew produk & nama produk dari ms produk
SELECT kode_produk, nama_produk FROM ms_produk_dqlab;

-- select semua kolom dari tr penjualan
SELECT * FROM tr_penjualan_dqlab;

-- prefic dan alias
--
--
SELECT ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

-- menggunakan trafix nama database dan tabel pada kolom nama produk dari tabel produk
SELECT pti_mart.ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;

-- alias
-- menggunakan nama alias dengan as
SELECT nama_produk as np FROM ms_produk_dqlab;
SELECT nama_produk np FROM ms_produk_dqlab;

-- menggunakan alias pada tabel produk dan juga kolom
SELECT nama_produk as np FROM ms_produk_dqlab as msp;

-- menggunakan alias untuk trafic
SELECT msp.nama_produk FROM ms_produk_dqlab as msp;

-- Case 1
SELECT nama_pelanggan as nmp, alamat as alt FROM ms_pelanggan_dqlab as msplg;
-- Case 2
SELECT nama_produk as nmpk, harga as hrg FROM ms_produk_dqlab as msp;
-- Latihan Mandiri
-- nomer 1
--
SELECT * FROM tr_penjualan_dqlab ORDER BY qty, tgl_transaksi;
-- nomer 2
--
SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan;
-- nomer 3
--
SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat;

-- ASC/Ascending (kecil ke besar) dan DESC/Descending (besar ke kecil)
-- Praktek 3
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC;

select nama_produk ,qty ,harga ,qty*harga AS total FROM tr_penjualan_dqlab 
ORDER BY qty*harga DESC;
SELECT 
  nama_produk,
  qty,
  harga,
  diskon_persen,
  harga * (diskon_persen / 100) AS diskon,
  harga - (harga * (diskon_persen / 100)) AS harga_setelah_diskon
FROM 
  tr_penjualan_dqlab
ORDER BY 
  diskon;
  
  -- ORDER BY dengan WHERE
  -- ambil nama produk,
  
SELECT nama_produk,qty FROM tr_penjualan_dqlab
WHERE nama_produk LIKE 'F%' ORDER BY qty DESC;