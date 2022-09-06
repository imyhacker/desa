<div id="content">
    <header>
        <h2 class="page_title">Update Edit Sejarah</h2>
    </header>

    <div class="content-inner">
        <div class="form-wrapper">
            <?php echo form_open('admin/profil/updateSejarah', array('method' => 'POST')); ?>
            <input type="hidden" name="id" value="<?= $sejarah['id']; ?>">
            <div class="form-group">
                <label for="title">Judul</label>
                <input type="text" name="judul" class="form-control" id="judul" value="<?= $sejarah['judul']; ?>">
                <?= form_error('judul', '<small class="text-danger">', '</small>'); ?>
            </div>

            <div class="form-group">
                <label for="title">Edit Sejarah</label>
                <textarea class="form-control summernote" placeholder="Edit Sejarah" name="profil"><?= $sejarah['profil']; ?></textarea>
                <?= form_error('profil', '<small class="text-danger">', '</small>'); ?>
            </div>

            <div class="clearfix">
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
            <?php echo form_close(); ?>
        </div>
    </div>
</div>