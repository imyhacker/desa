<div id="content">
    <header class="clearfix">
        <h2 class="page_title pull-left">potensi desa</h2>
        <a href="<?= base_url('admin/potensidesa/tambah'); ?>" class="btn btn-primary btn-xs pull-right"><b>Tambah potensi desa</b></a>
    </header>

    <div class="content-inner">
        <?= $this->session->flashdata('message'); ?>
        <table id="example" class="table table-striped table-bordered" style="width:100%">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Gambar</th>
                    <th>potensi desa</th>
                    <th>Tanggal</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php $no = 1; ?>
                <?php foreach ($potensidesa as $row) : ?>
                    <tr>
                        <td><?= $no; ?></td>
                        <td><img src="<?= base_url('upload_file/images/' . $row['image']); ?>" class="img-thumbnail" style="width:80px; height:60px;"></td>
                        <td><?= $row['title']; ?></td>
                        <td><?= date('d F Y', $row['date_created']); ?></td>
                        <td>
                            <a href="<?= base_url('admin/potensidesa/edit/' . $row['id']); ?>" class="btn btn-info btn-xs"><span class="glyphicon glyphicon-pencil"> </span></a> |
                            <a onclick="return confirm('Anda yakin mau menghapus info ini?')" href="<?= base_url('admin/potensidesa/hapus/' . $row['id']); ?>" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"> </span></a>
                        </td>
                    </tr>
                    <?php $no++; ?>
                <?php endforeach; ?>
            </tbody>
        </table>

    </div>
</div>