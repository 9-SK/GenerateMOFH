<!DOCTYPE html>
<html>
<head>
	<title><?php echo $this->base->text('user_inactive', 'title') ?> - <?php echo $this->base->get_hostname() ?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="icon" type="image/png" href="<?php echo base_url()?>assets/<?php echo $this->base->get_template() ?>/img/fav.png">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/<?php echo $this->base->get_template() ?>/css/tabler.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/<?php echo $this->base->get_template() ?>/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/<?php echo $this->base->get_template() ?>/css/style.css">
</head>
<body class="border-top-wide border-primary d-flex flex-column theme-<?php echo get_cookie('theme') ?? 'light' ?>">
	<div class="page page-center">
		<div class="container text-center">
			<div class="empty">
		        <div class="empty-header"><i class="fa fa-envelope-open"></i></div>
		        <p class="empty-title"><?php echo $this->base->text('oops_note', 'paragraph') ?></p>
		        <p class="empty-subtitle text-muted">
		        	<?php echo $this->base->text('user_inactive_note', 'paragraph') ?> <a href="<?php echo base_url() ?>/e/error_400?resend=true"><?php echo $this->base->text('resend_email', 'button') ?></a> <?php echo $this->base->text('or', 'label') ?> <a href="<?php echo base_url() ?>/e/error_400?logout=true"><?php echo $this->base->text('logout', 'button') ?></a>
		        </p>
	        </div>
		</div>
	</div>
	<div class="hidden-area" style="position: fixed; bottom: 0; right: 0;">
		<?php  
		if(isset($_SESSION['msg'])){
			$msg = json_decode($_SESSION['msg'], true);
			if($msg[0] == 0)
			{
				$class = 'danger';
			}
			else
			{
				$class = 'success';
			}
			$message = $msg[1];
			echo '<div class="alert alert-'.$class.' alert-dismissible" role="alert">
				'.$message.'
				<a class="btn-close" data-bs-dismiss="alert" aria-label="close"></a>
				</div>';
			unset($_SESSION['msg']);
		}
		?>
	</div>
</body>
</html>
