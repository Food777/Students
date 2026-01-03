<!DOCTYPE html>
<html>
<head>
    <title>Form Input Siswa</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">

    <div class="card shadow">
        <div class="card-header bg-primary text-white">
            <h4 class="mb-0">Form Input Data Siswa</h4>
        </div>
        <div class="card-body">

            <form action="insert.php" method="post">
                <div class="row mb-3">
                    <label class="col-sm-3 col-form-label">Nama</label>
                    <div class="col-sm-9">
                        <input type="text" name="nama" class="form-control" required>
                    </div>
                </div>

                <div class="row mb-3">
                    <label class="col-sm-3 col-form-label">Kelas</label>
                    <div class="col-sm-9">
                        <input type="text" name="kelas" class="form-control" required>
                    </div>
                </div>

                <div class="row mb-3">
                    <label class="col-sm-3 col-form-label">Tanggal Lahir</label>
                    <div class="col-sm-9">
                        <input type="date" name="tanggal_lahir" class="form-control" required>
                    </div>
                </div>

                <div class="row mb-3">
                    <label class="col-sm-3 col-form-label">Alamat</label>
                    <div class="col-sm-9">
                        <textarea name="alamat" class="form-control" rows="3" required></textarea>
                    </div>
                </div>

                <div class="row mb-3 align-items-center">
                    <label class="col-sm-3 col-form-label">Active</label>
                    <div class="col-sm-9">
                        <div class="form-check form-switch">
                            <input class="form-check-input" type="checkbox" name="active" value="1">
                            <label class="form-check-label">Ya</label>
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <label class="col-sm-3 col-form-label">Tanggal Mulai</label>
                    <div class="col-sm-9">
                        <input type="date" name="tanggal_mulai" class="form-control" required>
                    </div>
                </div>

                <div class="row mb-3">
                    <label class="col-sm-3 col-form-label">Tanggal Selesai</label>
                    <div class="col-sm-9">
                        <input type="date" name="tanggal_selesai" class="form-control" >
                    </div>
                </div>


                <div class="text-end">
                    <a href="index.php" class="btn btn-secondary">Kembali</a>
                    <button type="submit" class="btn btn-primary">Simpan Data</button>
                </div>
            </form>
        </div>
    </div>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
