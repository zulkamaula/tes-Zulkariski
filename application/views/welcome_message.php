<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Tes Zulkariski Mauladi</title>
	<style>
		.header {
			text-align: center;
			width: 35%;
			height: 10%;
		}

		.content {
			text-align: center
		}

		.content table,
		th,
		td {
			padding: 15px;
			border: 1px solid black;
			margin: 3px auto;
		}

		h2 {
			color: white;
			background-color: gray;
			padding: 15px;
			margin: 5px;
			border-radius: 5px;
		}
	</style>
</head>

<body>
	<div class="header">
		<h2>Tes Relasi 3 Table | CodeIgniter</h2>
		<h1>Zulkariski Mauladi</h1>
	</div>
	<div class="content">
		<h3>List Data</h3>

		<table>
			<thead>
				<tr>
					<th>No</th>
					<th>Nama Mahasiswa</th>
					<th>TTL</th>
					<th>Alamat</th>
					<th>No. TLP</th>
					<th>Nama Prodi</th>
					<th>Nama Fakultas</th>

				</tr>
			</thead>
			<tbody>
				<?php
				$no = 0;
				foreach ($dataProdi as $row) :
					$no++
				?>
					<tr>
						<td><?= $no ?>
						<td><?= $row->nama ?></td>
						<td><?= $row->tmp_lahir ?>, <?= $row->tgl_lahir ?></td>
						<td><?= $row->alamat ?></td>
						<td><?= $row->telepon ?></td>
						<td><?= $row->nama_prodi ?></td>
						<td><?= $row->nama_fakultas ?></td>
					</tr>
				<?php endforeach; ?>
			<tbody>
		</table>
	</div>
</body>

</html>