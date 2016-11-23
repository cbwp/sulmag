<?php  
	defined('C5_EXECUTE') or die("Access Denied.");
	Loader::element('footer_required'); 
?>
	<footer>
		<?php
	  	$a = new Area('Fusszeile'); 
	  	$a->display($c);
	  ?>
	</footer>
	</body>
</html>