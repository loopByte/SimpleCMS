<?php

/**
 * @author loopByte
 * @copyright 2014
 */
    
    require_once 'classes/db.php';
    require_once 'classes/article.php';
    require_once 'classes/site.php';

?>
<!DOCTYPE html>
<html>
    <head>
        <title><?php Site::title(); ?> - <?php Site::description(); ?></title>
        <link rel="stylesheet" type="text/css" href="css/main.css" />
        <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
    </head>
<body>
    <header class="header">
        <div>
            <h1 class="title"><?php Site::title(); ?></h1>
            <h2 class="description"><em><?php Site::description(); ?></em></h2>
        </div>
    </header>
    <div class="page">
        <?php 
        
            if(isset($_GET['article'])){
                Article::article_view();
            }else{
                Article::article_list();
            }
        
        ?>
    </div>
    <footer class="footer"></footer>
</body>
</html>