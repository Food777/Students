<?php
session_start();
error_reporting(E_ALL);

// koneksi
$con = mysqli_connect("localhost","root","","siswa");
if (mysqli_connect_errno()) {
    echo "Failed to connect: " . mysqli_connect_error();
}

// --- PAGINATION ---
$limit = 10;  // jumlah record per halaman
$page  = isset($_GET['page']) ? $_GET['page'] : 1;
$start = ($page - 1) * $limit;

$sql = "SELECT * FROM students LIMIT $start, $limit";
$rs  = mysqli_query($con, $sql);

// hitung total record
$total_result = mysqli_query($con, "SELECT COUNT(*) AS total FROM students");
$total_row = mysqli_fetch_assoc($total_result);
$total = $total_row["total"];

$total_pages = ceil($total / $limit);
?>
<html>
<head>
    <title>Students Table</title>
    <style>
        table { border-collapse: collapse; width: 90%; margin: 20px auto; }
        th, td { border: 1px solid #444; padding: 8px 12px; text-align: left; }
        th { background-color: #eee; }
        body { font-family: Arial; }
        .pagination { text-align:center; margin-top:20px; }
        .pagination a {
            padding: 8px 12px;
            background: #ddd;
            margin: 0 4px;
            text-decoration: none;
            color: black;
        }
        .pagination a.active {
            background: #333;
            color: white;
        }
    </style>
</head>
<body>

<h2 style="text-align:center;">Students Data</h2>

<div style="text-align:center;">
    <a href="add.php">➕ Tambah Data Siswa</a>
</div>

<table>
    <tr>
        <th>ID</th>
        <th>ID Siswa</th>
        <th>Kelas</th>
        <th>Nama</th>
        <th>Tanggal Lahir</th>
        <th>Alamat</th>
        <th>Active</th>
        <th>Tgl Mulai</th>
        <th>Tgl Selesai</th>
    </tr>

    <?php while ($row = mysqli_fetch_array($rs, MYSQLI_ASSOC)) { ?>
        <tr>
            <td><?= $row["id"] ?></td>
            <td><?= $row["id_siswa"] ?></td>
            <td><?= $row["kelas"] ?></td>
            <td><?= $row["nama"] ?></td>
            <td><?= $row["tanggal_lahir"] ?></td>
            <td><?= $row["alamat"] ?></td>
            <td style='text-align:center;'><?= $row["active"] == 1 ? "Ya" : "Tidak"?></td>
            <td><?= $row["tanggal_mulai"] ?></td>
            <td><?= $row["tanggal_selesai"] ?></td>
        </tr>
    <?php } ?>
</table>

<!-- PAGINATION -->
<div class="pagination">
    <?php for ($i = 1; $i <= $total_pages; $i++) { ?>
        <a href="index.php?page=<?= $i ?>" class="<?= ($i == $page) ? 'active' : '' ?>">
            <?= $i ?>
        </a>
    <?php } ?>
</div>

</body>
</html>
