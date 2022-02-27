<!DOCTYPE html>
<html lang="pl">
  <head>
    <script src="https://kit.fontawesome.com/0c6920c08d.js" crossorigin="anonymous"></script>
    <title>Cut2code - zadanie</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Zadanie rekrutacyjne">
   <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri().'/css/bootstrap.min.css'; ?>">
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>">
    <link rel="stylesheet" href="<?php echo get_stylesheet_directory_uri().'/css/animate.css'; ?>">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&family=Poppins:wght@500&display=swap" rel="stylesheet">
<?php  require_once($_SERVER['DOCUMENT_ROOT'].'/wp-content/themes/c2c/functions.php'); ?>
  </head>
  <body>
  
  <?php get_header(); ?>
  <?php get_sidebar(); ?>
  <?php get_footer(); ?>

    <script type="text/javascript" src="<?php echo get_stylesheet_directory_uri().'/js/jquery-3.6.0.min.js'; ?>">
</script>
     <script type="text/javascript" src="<?php echo get_stylesheet_directory_uri().'/js/bootstrap.min.js'; ?>">
</script>
     <script type="text/javascript" src="<?php echo get_stylesheet_directory_uri().'/js/app.js'; ?>">
</script>

  </body>
</html>