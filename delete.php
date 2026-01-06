<?php
session_start();
error_reporting(E_ALL);

// koneksi database
$con = mysqli_connect("localhost","root","","siswa");
if (mysqli_connect_errno()) {
    echo "Failed to connect: " . mysqli_connect_error();
}

// ambil id dari URL
$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;

if ($id > 0) {
    $delete = mysqli_query($con, "DELETE FROM students WHERE id = '$id'");
    if ($delete) {
        // berhasil dihapus, redirect ke index.php
        header("Location: index.php");
        exit;
    } else {
        echo "Gagal menghapus data";
    }
} else {
    echo "ID tidak valid";
}
?>
