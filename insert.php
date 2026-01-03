<?php
$con = mysqli_connect("localhost", "root", "", "siswa");

if (mysqli_connect_errno()) {
    die("Failed to connect: " . mysqli_connect_error());
}

$id_siswa= $_POST['id_siswa'];
$nama= $_POST['nama'];
$kelas= $_POST['kelas'];
$tanggal_lahir= $_POST['tanggal_lahir'];
$alamat= $_POST['alamat'];
$tanggal_mulai=($_POST['tanggal_mulai']);
$tanggal_selesai=($_POST['tanggal_selesai']);
$active = isset($_POST['active']) ? 1 : 0;

$sql = "INSERT INTO students 
(nama, kelas, tanggal_lahir, alamat, active, tanggal_mulai, tanggal_selesai)";
$sql.= " VALUES('$nama', '$kelas', '$tanggal_lahir', '$active', '$alamat', '$tanggal_mulai', '$tanggal_selesai')";
$rs = mysqli_query($con,$sql);

$last_id = mysqli_insert_id($con);
$id_siswa = "SWS" . str_pad($last_id, 3, "0", STR_PAD_LEFT);

// update id_siswa
mysqli_query($con, "UPDATE students SET id_siswa='$id_siswa' WHERE id=$last_id");


// eksekusi query
if ($rs) {
    echo "<script>
            alert('Data berhasil disimpan!');
            window.location='index.php';
          </script>";
} else {
    echo "Error: " . mysqli_error($con);
}
?>
