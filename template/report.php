<!DOCTYPE html>
<html>
  <?php include('module/header.php'); ?>
  <body onload="window.print();">
    <!-- Site wrapper -->
    <div class="wrapper">
      <section class="invoice">
        <h2 class="page-header">
          <?php echo $perusahaan['nama_hotel']; ?> 
        
          <span class="small"><?php echo $perusahaan['nama_perusahaan']; ?></span>
          <span class="lead text-red pull-right"><b>INVOICE</b></span>
        </h2>
    <table border="0" width="500">
 <tbody>

   <td>
        <h6>
          <?php echo $perusahaan['alamat_jalan'] ?>
         <p>  <?php echo $perusahaan['alamat_kabupaten'].' - '.$perusahaan['alamat_provinsi']; ?>
          <br/><b>Telp :</b> <?php echo $perusahaan['nomor_telp']; ?> - <b>HP / WA :</b> <?php echo $perusahaan['nomor_fax']; ?>
          <br/><b><?php echo $perusahaan['website']; ?></b> 
        </h6>
	</div>
   </td>
   <td>
   <img src="gambar/logo diva.png" height="50px" width="70px;">
		</td>
  </tr>
	</div>
</div>
   
  
 </tbody>
</table>
    
        
        <br/>
        <br/>

        <!-- Report Content -->
        <?php 
        
        $report=$_GET['report'];
        include('report/'.$report.'.php');
        
        ?>
        <!-- end:Report -->
      </section>
    </div>

    <!-- jQuery 2.1.4 -->
    <?php include('module/script.php'); ?>
  </body>
</html>
