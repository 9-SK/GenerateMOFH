<!DOCTYPE html>
<html>
<head>
	<title><?php echo $this->base->text('err_500', 'title') ?> - <?php echo $this->base->get_hostname() ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="icon" type="image/png" href="<?php echo base_url()?>assets/<?php echo $this->base->get_template() ?>/img/fav.png">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/<?php echo $this->base->get_template() ?>/css/tabler.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/<?php echo $this->base->get_template() ?>/css/all.min.css">
</head>
<body class="border-top-wide border-primary d-flex flex-column theme-<?php echo get_cookie('theme') ?? 'light' ?>">
	<div class="page page-center">
		<div class="container text-center">
			<div class="empty">
		        <div class="empty-header">500</div>
		        <p class="empty-title"><?php echo $this->base->text('oops_note', 'paragraph') ?></p>
		        <p class="empty-subtitle text-muted">
		        	<?php echo $this->base->text('err_500_note', 'paragraph') ?>
		        </p>
	        </div>
		</div>
	</div>
</body>
</html>
