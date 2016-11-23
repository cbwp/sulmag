<?php 
	defined('C5_EXECUTE') or die("Access Denied.");
	$this->inc('elements/header.php');
?>
	
<section id="cnt">
	<?php
  	$a = new Area('Inhalt-Block'); 
  	$a->display($c);
  ?>
</section>

<?php  $this->inc('elements/footer.php'); ?>