<?php
require_once __DIR__ . '/Laravel/vendor/autoload.php';

use Faker\Factory;

$conn = new mysqli("localhost", "root", "", "siswa");
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

$faker = Factory::create('id_ID');

// ambil ID terakhir
$result = $conn->query("SELECT id_siswa FROM students ORDER BY id DESC LIMIT 1");
$startNumber = 1;

if ($result && $result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $startNumber = ((int) substr($row['id_siswa'], 3)) + 1;
}

for ($i = 1; $i <= 50; $i++) {

    $id_siswa = 'SWS' . str_pad($startNumber + $i - 1, 3, '0', STR_PAD_LEFT);
    $kelas = $faker->randomElement(['7A','7B','8A','8B','9A','9B','10A','10B','11A','11B','12A','12B']);
    $nama = $faker->name;
    $tanggal_lahir = $faker->date('Y-m-d', '2008-01-01');
    $alamat = $faker->streetAddress;
    $active = $faker->randomElement([0, 1]);

    $tanggal_mulai = $faker->dateTimeBetween('-3 years', 'now');
    $tanggal_selesai = $faker->dateTimeBetween($tanggal_mulai, '+1 year');

    $tanggal_mulai = $tanggal_mulai->format('Y-m-d');
    $tanggal_selesai = $tanggal_selesai->format('Y-m-d');

    $sql = "INSERT INTO students 
            (id_siswa, kelas, nama, tanggal_lahir, alamat, active, tanggal_mulai, tanggal_selesai)
            VALUES
            ('$id_siswa', '$kelas', '$nama', '$tanggal_lahir', '$alamat', '$active', '$tanggal_mulai', '$tanggal_selesai')";

    $conn->query($sql);
}

echo "✅ 50 data dummy berhasil diinsert";
$conn->close();
