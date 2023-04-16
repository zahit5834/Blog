<!doctype html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Panel</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.4/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

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

    <div class="container">
        <div class="row my-5">
            <div class="col-sm-4">

                <div class="input-group mb-4">
                    <input id="topic" type="text" class="form-control" aria-label="Sizing example input"
                           aria-describedby="inputGroup-sizing-default" placeholder="Başlık">
                </div>

                <div class="input-group mb-4">
                    <textarea id="description" type="text" rows="6" class="form-control"
                              aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
                              placeholder="İçerik"></textarea>
                </div>

                <div class="input-group mb-4">
                    <input type="button" class="buttonAdd form-control btn btn-outline-dark mx-5" value="Ekle"
                           aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                </div>
            </div>
            <div class="col-sm-2"></div>
            <div class="col-sm-5">
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

                echo "<table class='table table-hover'><th>Id</th> <th>Baslik</th> <th>Aciklama <th>Eylem</th>";
                foreach ($row as $a) {
                    echo "<tr> <td>$a[0]</td> <td>$a[1]</td> <td><textarea disabled class='text-white' cols='50' rows='8'>$a[2]</textarea></td> <td><button class='buttonRemove btn btn-outline-light' type='submit' value='$a[0]'><i class='bi bi-trash'></i></button></td>";
                }
                echo "</table>";
                ?>

            </div>

        </div>

    </div>

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
<script>

    $('.buttonRemove').click(function () {
        var clickBtnValue = $(this).val();
        $.ajax({
            type: "POST",
            url: "delete.php",
            data: {action: clickBtnValue}
        }).done(function () {
            location.reload();
        });
    });
    $('.buttonAdd').click(function () {
        var topic = $('#topic').val();
        var description = $('#description').val();
        console.log(topic, description);
        $.ajax({
            type: "POST",
            url: "add.php",
            data: {topic: topic, description: description}
        }).done(function () {
            location.reload();

        });
    });
</script>
</body>
</html>