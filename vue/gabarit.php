<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <title><?= $title ?></title>
  <link href="style/style.css" rel="stylesheet">
</head>
<body>
  <header>
    <div class="menu"><?= config::MENU ?></div>
  </header>
  <main>
    
    <?php require "vue/vue_accueil.php";?> 
  </main>
  <footer>
    <?= config::FOOTER ?>
  </footer>  
</body>
</html>