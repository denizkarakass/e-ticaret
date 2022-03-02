<?php
session_start(); ob_start();
require_once("Ayarlar/ayar.php");
require_once("Ayarlar/fonksiyonlar.php");
require_once("Ayarlar/sitesayfalari.php");

include 'header.php';

if(isset($_REQUEST["SK"])){
    $SayfaKoduDegeri = SayiliIcerikleriFiltrele($_REQUEST["SK"]);
}else{
     $SayfaKoduDegeri = 0;
}

?>

        
      <!--SAYFA İÇERİĞİ BURADA-->  
        <?php
        if((!$SayfaKoduDegeri) or ($SayfaKoduDegeri=="") or ($SayfaKoduDegeri=="0")){
             include($Sayfa[0]);
        }else{
             include($Sayfa[$SayfaKoduDegeri]);
        }

     

       

        ?>



<?php
include 'footer.php';
?>


<?php
$VeritabaniBaglantisi   =   null;
ob_end_flush();
?>


