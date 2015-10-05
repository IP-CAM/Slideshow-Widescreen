<div class="load">
    <img src="/image/main/712.GIF" />
</div>
<script type="text/javascript"><!--
  var heightS = document.body.clientHeight - $('.mainHead').height() - 223;
 $('.mainView').css('cssText','height: ' + heightS + 'px !important; overflow:hidden;');
$('.load').css('height',heightS);
--></script>
<div id="slideshow<?php echo $module; ?>" class="owl-carousel" style="opacity: 1;">
  <?php foreach ($banners as $banner) { ?>
  <div class="item">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive-wide" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive-wide" />
    <?php } ?>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--

 $('.mainView').find('.container').css("cssText","width: " + 100 + "% !important; background-color: transparent !important;");
 $('.mainView').find('#content').css('cssText','padding-left: 0px !important; padding-right: 0px !important;');

$('#slideshow<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 4000,
	singleItem: true,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: true
});
$('.owl-wrapper-outer').css('cssText','height: ' + heightS + 'px;');


var marginS = $('.img-responsive-wide').height() - ($('.img-responsive-wide').height() + $('.mainView').height())/2;
$('.owl-item').find('.item').css('cssText','margin-top: -' + marginS + 'px;');
$('.load').css('display','none');

--></script>