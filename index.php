<!doctype html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anasayfa</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
</head>
<body class="bg-secondary">
<!--NavBar-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="index.php">M.Zahit</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.php">Anasayfa <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="blog.php">Blog</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="about.php">Hakkımda</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="contact.php">İletişim</a>
            </li>
        </ul>
    </div>
</nav>
<!--NavBar-->

<!--Main-->
<main class="body my-3 mx-3">
    <h1 class="text-left my-3 mx-3 text-white">Anasayfa</h1>
    <?php

    $baglanti = new mysqli("localhost", "root", "", "myblog");

    if ($baglanti->connect_errno > 0) {
        die("<b>Bağlantı Hatası:</b> " . $baglanti->connect_error);
    }

    $baglanti->set_charset("utf8");

    $sorgu = $baglanti->query("SELECT id, baslik, aciklama FROM icerik");

    if ($baglanti->errno > 0) {
        die("<b>Sorgu Hatası:</b> " . $baglanti->error);
    }


    $row = mysqli_fetch_all($sorgu);


    foreach ($row as $a) {
        echo "<div class='border border-dark rounded bg-dark text-white py-2 px-2'>
       <h3>" . $a[1] . "</h3>
       <br>
       <p>
       " . $a[2] . "
       </p>
   </div> <br>";
    }

    $sorgu->close();
    $baglanti->close();

    ?>
    <br><br>
</main>
<!--Main-->

<!-- Footer -->
<footer class="footer fixed-bottom bg-dark text-center text-white">
    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        © 2023 Copyright:
        <a class="text-white" href="#">Mehmet Zahit Akbulut</a>
    </div>
    <!-- Copyright -->
</footer>
<!-- Footer -->
</body>
</html>