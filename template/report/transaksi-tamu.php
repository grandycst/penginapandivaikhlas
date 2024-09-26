<?php

include('component/com-transaksi.php');

include('component/com-hitung-transaksi.php');
include('component/com-user.php');
include('component/com-layanan.php');
?>

	
<table border="0" width="500">
 <thead>
 KAMAR NOMOR : <b><?php echo $transaksi_kamar['nomor_kamar']; ?></b>
 </thead>
 <tbody>
  <tr height="100">
   <td>
   
<div class="row">
   <div class="col-sm-6">
		Ditujukan Kepada :
		<address>
			<strong><?php echo $transaksi_kamar['prefix'].'. '.$transaksi_kamar['nama_depan'].'&nbsp;'.$transaksi_kamar['nama_belakang']; ?></strong><br/>
			<?php echo $transaksi_kamar['alamat_jalan']; ?><br/>
			<?php echo $transaksi_kamar['alamat_kabupaten'].' - '.$transaksi_kamar['alamat_provinsi']; ?><br/>
		
			Nomor Telp : <?php echo $transaksi_kamar['nomor_telp']; ?><br/>

			TANGGAL CHECK IN  : <?php echo $transaksi_kamar['tanggal_checkin']; ?>
			<br>
			TANGGAL CHECK OUT : <?php echo $transaksi_kamar['tanggal_checkout']; ?>
			<br>
			<b>JAMINAN : </b><br/>
	   		<span class="lead"><?php echo $transaksi_kamar['jaminan']; ?></span><br/><br/>
		</br>
		</address>
	</div>
   </td> 
  
   <td>
   <div class="col-sm-6">
  	 <b>Front Office : </b><br/>
	   <span class="lead"><?php echo $_SESSION['nama']; ?></span><br/><br/>
		<b>NOMOR INVOICE : </b><br/>
		<span class="lead"><?php echo $transaksi_kamar['nomor_invoice']; ?></span><br/><br/>
		<b>Tanggal Terbit :</b><br/>
		<span class="lead"><?php echo date('d M Y'); ?></span>
		</td>
  </tr>
	</div>
</div>
   
  
 </tbody>
</table>

<h5><b>RINCIAN TAGIHAN</b></h5>
<table class="table table-bordered table-striped table-responsive">
	<thead>
		<tr>
			<th>Produk / Layanan</th>
			<th>Harga</th>
			<th>Qty</th>
			<th>Total</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Room Type : <?php echo $transaksi_kamar['nama_kamar_tipe']; ?></td>
			<td>Rp <?php echo number_format($transaksi_kamar['harga_malam']); ?></td>
			<td><?php echo $durasi; ?> Malam</td>
			<td>Rp <?php echo number_format($transaksi_kamar['total_biaya_kamar']); ?></td>
		</tr>
		<?php foreach($transaksi_layanan as $transaksi_layanan) { ?>
		<tr>
			<td><?php echo $transaksi_layanan['nama_layanan']; ?></td>
			<td>Rp <?php echo number_format($transaksi_layanan['harga_layanan']); ?></td>
			<td><?php echo $transaksi_layanan['jumlah'].'&nbsp;'.$transaksi_layanan['satuan']; ?></td>
			<td>Rp <?php echo number_format($transaksi_layanan['total']); ?></td>
		</tr>
		<?php } ?>
	</tbody>
</table>


	<div class="col-sm-6">
		<table class="table table-bordered table-responsive">
			<tr>
				<td><b>Sub-Total</b></td>
				<td>Rp <?php echo number_format($subtotal); ?></td>
			</tr>
			<tr>
				<td>Jumlah Discount</td>
				<td>Rp <?php echo number_format($transaksi_kamar['disc']); ?></td>
			</tr>
			<tr>
				<td>Jumlah Deposit</td>
				<td>Rp <?php echo number_format($transaksi_kamar['deposit']); ?></td>
			</tr>
			<tr>
				<td><b>Total Sisa</b></td>
				<td><b>Rp <?php echo number_format($grand_total); ?></b></td>
			</tr>
		</table>
	</div>
	

