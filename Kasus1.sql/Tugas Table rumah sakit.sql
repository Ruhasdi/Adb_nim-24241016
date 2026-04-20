CREATE TABLE `DOKTER` (
  `id_dokter` interger PRIMARY KEY,
  `nama` varchar(30),
  `sp` varchar(30),
  `no_tlp` integer,
  `kode_poli` integer
);

CREATE TABLE `POLIKLINIK` (
  `kode_poli` integer PRIMARY KEY,
  `nama_poli` varchar(20)
);

CREATE TABLE `PASIEN` (
  `NIK` integer PRIMARY KEY,
  `nama` varchar(255),
  `alamat` varchar(255),
  `sex` bool,
  `BOD` timestamp
);

CREATE TABLE `PENDAFTARAN` (
  `no_antrean` integer PRIMARY KEY,
  `kode_poli` integer,
  `NIK` integer,
  `tgl_daftar` datetime
);

CREATE TABLE `REKAM_MEDIS` (
  `no_rm` integer,
  `NIK` integer,
  `kode_obat` integer,
  `tgl_rm` timestamp
);

CREATE TABLE `OBAT` (
  `kode_obat` integer,
  `nama_obat` varchar(255),
  `harga` integer
);

ALTER TABLE `DOKTER` ADD FOREIGN KEY (`kode_poli`) REFERENCES `POLIKLINIK` (`kode_poli`);

ALTER TABLE `PENDAFTARAN` ADD FOREIGN KEY (`kode_poli`) REFERENCES `POLIKLINIK` (`kode_poli`);

ALTER TABLE `PENDAFTARAN` ADD FOREIGN KEY (`NIK`) REFERENCES `PASIEN` (`NIK`);

ALTER TABLE `PASIEN` ADD FOREIGN KEY (`NIK`) REFERENCES `REKAM_MEDIS` (`NIK`);

ALTER TABLE `OBAT` ADD FOREIGN KEY (`kode_obat`) REFERENCES `REKAM_MEDIS` (`kode_obat`);
