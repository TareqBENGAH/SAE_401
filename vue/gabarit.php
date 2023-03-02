<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <title><?= config::TITREONGLET ?></title>
  <link href="style/style.css" rel="stylesheet">
</head>
<body>
  <header>
    <div class="header_logo">
      <img src="img/header/logo_header.png" alt="Kaiserstuhl escape logo">
    </div>
    <div class="menu"><?= config::MENU ?></div>
  </header>
  <main>
    
    <?php require "vue/vue_accueil.php";?> 
  </main>
  <footer>
    <div class="footer_navigation">
      <?= config::FOOTER ?>
    </div>
    <div class="footer_copyright">
      <img src="img/footer/logo-footer.png" alt="Logo Kaiserstuhl escape">
      <p>Les 3 Pélos@</p>
    </div>
  </footer>  
</body>
</html>