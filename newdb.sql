/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.13-MariaDB : Database - project_hotel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`project_hotel` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `project_hotel`;

/*Table structure for table `finance_income` */

DROP TABLE IF EXISTS `finance_income`;

CREATE TABLE `finance_income` (
  `id_finance_income` int(5) NOT NULL AUTO_INCREMENT,
  `nomor_invoice` varchar(20) NOT NULL,
  `jenis_income` varchar(100) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  PRIMARY KEY (`id_finance_income`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `finance_income` */

/*Table structure for table `kamar` */

DROP TABLE IF EXISTS `kamar`;

CREATE TABLE `kamar` (
  `id_kamar` int(3) NOT NULL AUTO_INCREMENT,
  `nomor_kamar` int(3) NOT NULL,
  `id_kamar_tipe` int(3) NOT NULL,
  `max_dewasa` int(11) NOT NULL,
  `max_anak` int(11) NOT NULL,
  `status_kamar` varchar(20) NOT NULL DEFAULT 'TERSEDIA',
  PRIMARY KEY (`id_kamar`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `kamar` */

insert  into `kamar`(`id_kamar`,`nomor_kamar`,`id_kamar_tipe`,`max_dewasa`,`max_anak`,`status_kamar`) values 
(1,101,2,1,2,'TERPAKAI'),
(6,102,2,2,2,'TERPAKAI');

/*Table structure for table `kamar_tipe` */

DROP TABLE IF EXISTS `kamar_tipe`;

CREATE TABLE `kamar_tipe` (
  `id_kamar_tipe` int(3) NOT NULL AUTO_INCREMENT,
  `nama_kamar_tipe` varchar(50) NOT NULL,
  `harga_malam` int(3) NOT NULL,
  `harga_orang` int(3) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_kamar_tipe`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `kamar_tipe` */

insert  into `kamar_tipe`(`id_kamar_tipe`,`nama_kamar_tipe`,`harga_malam`,`harga_orang`,`keterangan`) values 
(2,'STANDART',100000,25000,''),
(3,'SUPERIOR',500000,75000,''),
(4,'SUITE',750000,150000,'');

/*Table structure for table `layanan` */

DROP TABLE IF EXISTS `layanan`;

CREATE TABLE `layanan` (
  `id_layanan` int(3) NOT NULL AUTO_INCREMENT,
  `nama_layanan` varchar(100) NOT NULL,
  `id_layanan_kategori` int(3) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga_layanan` int(3) NOT NULL,
  PRIMARY KEY (`id_layanan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `layanan` */

insert  into `layanan`(`id_layanan`,`nama_layanan`,`id_layanan_kategori`,`satuan`,`harga_layanan`) values 
(1,'NASI GORENG',1,'Porsi',25000),
(2,'MIE GORENG',1,'Porsi',15000),
(3,'KOPI TUBRUK',2,'Pitcher',85000);

/*Table structure for table `layanan_kategori` */

DROP TABLE IF EXISTS `layanan_kategori`;

CREATE TABLE `layanan_kategori` (
  `id_layanan_kategori` int(3) NOT NULL AUTO_INCREMENT,
  `nama_layanan_kategori` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_layanan_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `layanan_kategori` */

insert  into `layanan_kategori`(`id_layanan_kategori`,`nama_layanan_kategori`,`keterangan`) values 
(1,'FOOD','Produk makanan, snack, sarapan dan lain-lain'),
(2,'DRINK','Produk minuman'),
(3,'TRANSPORTASI','Fasilitas transportasi untuk kebutuhan tamu hotel');

/*Table structure for table `perusahaan` */

DROP TABLE IF EXISTS `perusahaan`;

CREATE TABLE `perusahaan` (
  `id_perusahaan` int(100) NOT NULL AUTO_INCREMENT,
  `nama_hotel` varchar(100) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `alamat_jalan` text NOT NULL,
  `alamat_kabupaten` varchar(50) NOT NULL,
  `alamat_provinsi` varchar(50) NOT NULL,
  `nomor_telp` varchar(20) NOT NULL,
  `nomor_fax` varchar(20) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_perusahaan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `perusahaan` */

insert  into `perusahaan`(`id_perusahaan`,`nama_hotel`,`nama_perusahaan`,`alamat_jalan`,`alamat_kabupaten`,`alamat_provinsi`,`nomor_telp`,`nomor_fax`,`website`,`email`) values 
(1,'NAMA HOTEL','PT. Perusahaan Hotel','Jalan Alamat Hotel, No. 00','Kota Hotel','Provinsi Hotel','000 0000 0000','000 0000 0000','http://www.ecksolusi.com','info@ecksolusi.com');

/*Table structure for table `tamu` */

DROP TABLE IF EXISTS `tamu`;

CREATE TABLE `tamu` (
  `id_tamu` int(3) NOT NULL AUTO_INCREMENT,
  `prefix` varchar(5) NOT NULL,
  `nama_depan` varchar(100) NOT NULL,
  `nama_belakang` varchar(100) NOT NULL,
  `tipe_identitas` varchar(20) NOT NULL,
  `nomor_identitas` varchar(20) NOT NULL,
  `warga_negara` varchar(100) NOT NULL DEFAULT 'Indonesia',
  `alamat_jalan` text NOT NULL,
  `alamat_kabupaten` varchar(100) NOT NULL,
  `alamat_provinsi` varchar(100) NOT NULL,
  `nomor_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tamu`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tamu` */

insert  into `tamu`(`id_tamu`,`prefix`,`nama_depan`,`nama_belakang`,`tipe_identitas`,`nomor_identitas`,`warga_negara`,`alamat_jalan`,`alamat_kabupaten`,`alamat_provinsi`,`nomor_telp`,`email`) values 
(4,'Mr','tdgfsg','sdfdfd','KTP','534543534543','xcdv','dfbxcvxc','pasaman','xcvcxcv','vdcd','cdcdd'),
(5,'Mr','dsfdsf','dfdsf','KTP','f34324324324','','fsdfd','dsfsd','sdfsd','dfsdf','dsfsdf');

/*Table structure for table `transaksi_kamar` */

DROP TABLE IF EXISTS `transaksi_kamar`;

CREATE TABLE `transaksi_kamar` (
  `id_transaksi_kamar` int(3) NOT NULL AUTO_INCREMENT,
  `id_user` int(3) NOT NULL,
  `nomor_invoice` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `id_tamu` int(3) NOT NULL,
  `id_kamar` int(3) NOT NULL,
  `jumlah_dewasa` int(3) NOT NULL,
  `jumlah_anak` int(3) NOT NULL,
  `tanggal_checkin` date NOT NULL,
  `waktu_checkin` time NOT NULL,
  `tanggal_checkout` date NOT NULL,
  `waktu_checkout` time NOT NULL,
  `total_biaya_kamar` int(20) NOT NULL,
  `deposit` int(20) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'CHECK IN',
  PRIMARY KEY (`id_transaksi_kamar`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `transaksi_kamar` */

insert  into `transaksi_kamar`(`id_transaksi_kamar`,`id_user`,`nomor_invoice`,`tanggal`,`id_tamu`,`id_kamar`,`jumlah_dewasa`,`jumlah_anak`,`tanggal_checkin`,`waktu_checkin`,`tanggal_checkout`,`waktu_checkout`,`total_biaya_kamar`,`deposit`,`status`) values 
(20,0,'','0000-00-00',0,0,0,0,'0000-00-00','00:00:00','0000-00-00','00:00:00',0,0,'CHECK OUT'),
(21,0,'','0000-00-00',0,0,0,0,'0000-00-00','00:00:00','0000-00-00','00:00:00',0,0,'CHECK OUT');

/*Table structure for table `transaksi_layanan` */

DROP TABLE IF EXISTS `transaksi_layanan`;

CREATE TABLE `transaksi_layanan` (
  `id_transaksi_layanan` int(3) NOT NULL AUTO_INCREMENT,
  `id_user` int(3) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `id_transaksi_kamar` int(3) NOT NULL,
  `id_layanan` int(3) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`id_transaksi_layanan`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `transaksi_layanan` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(3) NOT NULL AUTO_INCREMENT,
  `images` varchar(100) NOT NULL DEFAULT 'user.jpg',
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_user_role` int(5) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `nomor_telp` varchar(20) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id_user`,`images`,`username`,`password`,`nama`,`id_user_role`,`jabatan`,`nomor_telp`) values 
(1,'user.jpg','admin','21232f297a57a5a743894a0e4a801fc3','Nama Administrator',1,'Application Developer','0800 0000 0000');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `id_user_role` int(10) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_user_role`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `user_role` */

insert  into `user_role`(`id_user_role`,`role_name`,`keterangan`) values 
(1,'DEVELOPER','Akses khusus untuk pembuat aplikasi'),
(2,'SUPER ADMINISTRATOR',''),
(3,'ADMINISTRATOR',''),
(4,'FRONT OFFICE',''),
(5,'ROOM SERVICE','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
