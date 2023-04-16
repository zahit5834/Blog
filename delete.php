<?php
if (isset($_POST['action'])) {
    $id = $_POST['action'];
    $baglanti = new mysqli("localhost", "root", "", "myblog");

    if ($baglanti->connect_errno > 0) {
        die("<b>Bağlantı Hatası:</b> " . $baglanti->connect_error);
    }

    $baglanti->set_charset("utf8");

    $sorgu = $baglanti->query("DELETE FROM icerik where id=$id");
    if ($baglanti->errno > 0) {
        die("<b>Sorgu Hatası:</b> " . $baglanti->error);
    }
}
?>