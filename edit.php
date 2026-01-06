<?php
session_start();
error_reporting(E_ALL);

// koneksi database
$con = mysqli_connect("localhost","root","","siswa");
if (mysqli_connect_errno()) {
    echo "Failed to connect: " . mysqli_connect_error();
}

// ambil id dari URL
$id = isset($_GET['id']) ? $_GET['id'] : 0;

// jika form disubmit
if (isset($_POST['update'])) {
    $id_siswa        = $_POST['id_siswa'];
    $kelas           = $_POST['kelas'];
    $nama            = $_POST['nama'];
    $tanggal_lahir   = $_POST['tanggal_lahir'];
    $alamat          = $_POST['alamat'];
    $active          = $_POST['active'];
    $tanggal_mulai   = $_POST['tanggal_mulai'];
    $tanggal_selesai = $_POST['tanggal_selesai'];

    $update = mysqli_query($con, "
        UPDATE students SET
            id_siswa = '$id_siswa',
            kelas = '$kelas',
            nama = '$nama',
            tanggal_lahir = '$tanggal_lahir',
            alamat = '$alamat',
            active = '$active',
            tanggal_mulai = '$tanggal_mulai',
            tanggal_selesai = '$tanggal_selesai'
        WHERE id = '$id'
    ");

    if ($update) {
        header("Location: index.php");
        exit;
    } else {
        echo "Gagal update data";
    }
}

// ambil data lama
$result = mysqli_query($con, "SELECT * FROM students WHERE id='$id'");
$data = mysqli_fetch_assoc($result);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Data Siswa</title>
    <style>
        body { font-family: Arial; }
        form {
            width: 400px;
            margin: 30px auto;
        }
        label {
            display: block;
            margin-top: 10px;
        }
        input, textarea, select {
            width: 100%;
            padding: 8px;
        }
        button {
            margin-top: 15px;
            padding: 10px;
            width: 100%;
        }
    </style>
</head>
<body>

<h2 style="text-align:center;">Edit Data Siswa</h2>

<form method="post">
    <label>ID Siswa</label>
    <input type="text" name="id_siswa" value="<?= $data['id_siswa'] ?>" required>

    <label>Kelas</label>
    <input type="text" name="kelas" value="<?= $data['kelas'] ?>" required>

    <label>Nama</label>
    <input type="text" name="nama" value="<?= $data['nama'] ?>" required>

    <label>Tanggal Lahir</label>
    <input type="date" name="tanggal_lahir" value="<?= $data['tanggal_lahir'] ?>">

    <label>Alamat</label>
    <textarea name="alamat"><?= $data['alamat'] ?></textarea>

    <label>Active</label>
    <select name="active">
        <option value="1" <?= $data['active'] == 1 ? 'selected' : '' ?>>Ya</option>
        <option value="0" <?= $data['active'] == 0 ? 'selected' : '' ?>>Tidak</option>
    </select>

    <label>Tanggal Mulai</label>
    <input type="date" name="tanggal_mulai" value="<?= $data['tanggal_mulai'] ?>">

    <label>Tanggal Selesai</label>
    <input type="date" name="tanggal_selesai" value="<?= $data['tanggal_selesai'] ?>">

    <button type="submit" name="update">💾 Update</button>
</form>

<div style="text-align:center;">
    <a href="index.php">⬅ Kembali</a>
</div>

</body>
</html>
