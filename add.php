<?php
    $topic = $_POST['topic'];
    $description = $_POST['description'];

    $baglanti = new mysqli("localhost", "root", "", "myblog");

    if ($baglanti->connect_errno > 0) {
        die("<b>Bağlantı Hatası:</b> " . $baglanti->connect_error);
    }

    $baglanti->set_charset("utf8");

    $sorgu = $baglanti->query("INSERT INTO icerik (`id`, `baslik`, `aciklama`) VALUES (NULL, '$topic', '$description'); ");
    if ($baglanti->errno > 0) {
        die("<b>Sorgu Hatası:</b> " . $baglanti->error);

}
?>