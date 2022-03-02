<!--FOOTER BURADA-->
<footer id="footer" class="col col-12 fl">
    <div class="row">
        <!--cache--><div class="col col-12 bilgiBanner">
<div class="row">
<div class="inner">
<div class="col col-12 bilgiInner">
<div class="row notClear">
<div class="box col-4 bilgiItem">
<div class="row">
<div class="col col-12 bilgiImg">
<span class="image-wrapper fl">
<span class="imgInner">

    <!--GÜVENLİ ALIŞVERİŞ GÖNDERİM RESİMLERİ BURADA BURDAN DEĞİŞTİRİLEBİLİR-->
<img src="Data/EditorFiles/mimagaza/footer3.png" alt="Güvenli Alışveriş" style="width: 50px">
</span>
</span>
</div>
<div class="col col-12 a-center bilgiTitle">
Güvenli Alışveriş
</div>
<div class="col col-12 a-center bilgiContent">
256 Bit SSL
</div>
</div>
</div>
<!--	<div class="box col-4 bilgiItem">
<div class="row">
<div class="col col-12 bilgiImg">
<span class="image-wrapper fl">
<span class="imgInner">
<img src="/Data/EditorFiles/mimagaza/cargo.png" alt="">
</span>
</span>
</div>
<div class="col col-12 a-center bilgiTitle">
Ücretsiz Kargo
</div>
<div class="col col-12 a-center bilgiContent">
Tüm Alışverişlerde Kargo Bizden
</div>
</div>
</div> -->
<div class="box col-4 bilgiItem">
<div class="row">
<div class="col col-12 bilgiImg">
<span class="image-wrapper fl">
<span class="imgInner">
<img src="Data/EditorFiles/mimagaza/footer2.png" alt="Güvenli Gönderi" style="width: 50px">
</span>
</span>
</div>
<div class="col col-12 a-center bilgiTitle">
Güvenli Gönderi
</div>
<div class="col col-12 a-center bilgiContent">
<!-- 14:00’e kadar alışverişlerde Aynı Gün Kargo -->
Güvenli Teslimat ve Kargo
</div>
</div>
</div>
<div class="box col-4 bilgiItem">
<div class="row">
<div class="col col-12 bilgiImg">
<span class="image-wrapper fl">
<span class="imgInner">
<img src="Data/EditorFiles/mimagaza/footer1.png" alt="Tek Tıkla Alışveriş" style="width: 50px">
</span>
</span>
</div>
<div class="col col-12 a-center bilgiTitle">
Tek Tıkla Alışveriş
</div>
<div class="col col-12 a-center bilgiContent">
Bir Telefon Uzağında
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div><!--cache-->

<div id="footerMiddle" class="col col-12">
<div class="row">
<div class="inner">
<div class="col col-3 col-md-4 col-sm-12">
<ul class="fl col-12">
<li class="col-sm-12">
<h3 class="ease">
Önemli Bilgiler
<span class="fr icon-wrapper forMobile">
<i class="icon-plus"></i>
<i class="icon-minus d-none"></i>
</span>
</h3>
<div class="fl col-12">
<ul class="fl col-12">
<li class="col-sm-12">
<a href="teslimat-koşulları">Teslimat Koşulları</a>
</li>
<li class="col-sm-12">
<a href="sıkça-sorulan-sorular">Sıkça Sorulan Sorular</a>
</li>
<li class="col-sm-12">
<a href="üyelik-sözleşmesi">Üyelik Sözleşmesi</a>
</li>
<li class="col-sm-12">
<a href="satıs-sözleşmesi">Satış Sözleşmesi</a>
</li>
<li class="col-sm-12">
<a href="garanti-ve-iade">Garanti ve İade Koşulları</a>
</li>
<li class="col-sm-12">
<a href="gizlilik-ve-guvenlik">Gizlilik ve Güvenlik</a>
</li>
</ul>
</div>
</li>
</ul>
</div>
<div class="col col-3 col-md-4 col-sm-12">
<ul class="fl col-12">
<li class="col-sm-12">
<h3 class="ease">
Hızlı Erişim
<span class="fr icon-wrapper forMobile">
<i class="icon-plus"></i>
<i class="icon-minus d-none"></i>
</span>
</h3>
<div class="fl col-12">
<ul class="fl col-12">
<li class="col-sm-12">
<a href="anasayfa">Anasayfa</a>
</li>
<li class="col-sm-12">
<a href="kargom-nerede">Kargom Nerede</a>
</li>
<li class="col-sm-12">
<a href="iletişim">Müşteri Hizmetleri</a>
</li>
<li class="col-sm-12">
<a href="sepet.html">Sepetim</a>
</li>
<li class="col-sm-12">
<a href="hakkımızda">Hakkımızda</a>
</li><li class="col-sm-12">
<a href="mağazalarımız">Mağazalarımız</a>
</li>
</ul>
</div>
</li>
</ul>
</div>



<!--Üye giriş yaptı ise üye girişi ve üye olu değiştirmek için -->
  <?php  
  if(isset($_SESSION["Kullanici"])){
    ?>
    
 <div class="col col-3 col-md-4 col-sm-12">
<ul class="fl col-12">
<li class="col-sm-12">
<h3 class="ease">
 Kullanıcı İşlemleri
<span class="fr icon-wrapper forMobile">
<i class="icon-plus"></i>
<i class="icon-minus d-none"></i>
</span>
</h3>
<div class="fl col-12">
<ul class="fl col-12">
<li class="col-sm-12">
<a href="hesap-bilgilerim">Hesabım</a>
</li>
<li class="col-sm-12">
<a href="siparişlerim">Siparişlerim</a>
</li>
<li class="col-sm-12">
<a href="adreslerim">Adreslerim</a>
</li>
<li class="col-sm-12">
<a href="index.php?SK=xxxxx">Sepetim</a>
</li>
<li class="col-sm-12">
<a href="index.php?SK=50">Çıkış Yap</a>
</li>
</ul>
</div>
</li>
</ul>
</div>
<!--Eğer Üye Değilse Else Çalışacak-->
    <?php
  }else{
     ?>
 
<div class="col col-3 col-md-4 col-sm-12">
<ul class="fl col-12">
<li class="col-sm-12">
<h3 class="ease">
Üye Alanı
<span class="fr icon-wrapper forMobile">
<i class="icon-plus"></i>
<i class="icon-minus d-none"></i>
</span>
</h3>
<div class="fl col-12">
<ul class="fl col-12">
<li class="col-sm-12">
<a href="yeni-üye-kayıt">Üye Ol</a>
</li>
<li class="col-sm-12">
<a href="üye-girişi">Üye Girişi</a>
</li>
</ul>
</div>
</li>
</ul>
</div>
    <?php   /*Üye giriş yaptı ise üye girişi ve üye olu değiştirmek için yapılmış else parantezinin sonu*/
  }
   ?>








</div>
</div>
</div>
<div class="box col-12" id="footer-social">
<div class="row">
<div class="inner">
<div class="box col-12">
<div class="box col-12">
<h3>Sosyal Medya</h3>
</div>
<div class="fl col-12">
<ul class="fl col-12 text-center" id="social">
<li>
<a href="<?php echo DonusumleriGeriDondur($instagram1); ?>" rel="nofollow" data-target="blank">
<img src="Data/EditorFiles/mimagaza/ins.png" alt="Sosyal Medya - 0" />
</a>
</li>
<li>
<a href="<?php echo DonusumleriGeriDondur($facebook1); ?>" rel="nofollow" data-target="blank">
<img src="Data/EditorFiles/mimagaza/fa.png" alt="Sosyal Medya - 1" />
</a>
</li>

<!--
<li>
    <a href="<?php echo DonusumleriGeriDondur($instagram2); ?>" rel="nofollow" data-target="blank">
    <img src="Data/EditorFiles/mimagaza/ins.png" alt="Sosyal Medya - 0" />
    </a>
</li>
 <li>
    <a href="<?php echo DonusumleriGeriDondur($facebook2); ?>" rel="nofollow" data-target="blank">
    <img src="Data/EditorFiles/mimagaza/fa.png" alt="Sosyal Medya - 1" />
 </a>
</li>
-->

</ul>
</div>
</div>
</div>
</div>
</div>
<div id="footerCopyright" class="col col-12 text-center">
© 2022 mimagaza.com Tüm Hakları Saklıdır
</div>


<script type="text/javascript">
$(document).ready(function () {
$('#footerMiddle h3').click(function () {
if (/Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent)) {
$(this).toggleClass('active').find('.icon-wrapper *').toggleClass('d-none');
$(this).next('div').slideToggle();
}
});
});
</script>

</footer>





</div>

</body>

</html>
