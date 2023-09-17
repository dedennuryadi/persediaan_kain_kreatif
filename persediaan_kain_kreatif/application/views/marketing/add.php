<div class="row justify-content-center">
    <div class="col-md-8">
        <div class="card shadow-sm border-bottom-primary">
            <div class="card-header bg-white py-3">
                <div class="row">
                    <div class="col">
                        <h4 class="h5 align-middle m-0 font-weight-bold text-primary">
                            Form Tambah data marketing
                        </h4>
                    </div>
                    <div class="col-auto">
                        <a href="<?= base_url('marketing') ?>" class="btn btn-sm btn-secondary btn-icon-split">
                            <span class="icon">
                                <i class="fa fa-arrow-left"></i>
                            </span>
                            <span class="text">
                                Kembali
                            </span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <?= $this->session->flashdata('pesan'); ?>
                <?= form_open(); ?>
                <div class="row form-group">
                    <label class="col-md-3 text-md-right" for="id_marketing">ID marketing</label>
                    <div class="col-md-9">
                        <input readonly value="<?= set_value('id_marketing', $id_marketing); ?>" name="id_marketing" id="id_marketing" type="text" class="form-control" placeholder="ID marketing...">
                        <?= form_error('id_marketing', '<small class="text-danger">', '</small>'); ?>
                    </div>
                </div>
                <div class="row form-group">
                    <label class="col-md-3 text-md-right" for="nama_marketing">nama marketing</label>
                    <div class="col-md-9">
                        <input value="<?= set_value('nama_marketing"'); ?>" name="nama_marketing" id="nama_marketing" type="text" class="form-control" placeholder="nama_marketing"...">
                        <?= form_error('nama_marketing"', '<small class="text-danger">', '</small>'); ?>
                    </div>
                </div>
                <div class="row form-group">
                    <label class="col-md-3 text-md-right" for="no_telp">No Telp</label>
                    <div class="col-md-9">
                        <input value="<?= set_value('no_telp'); ?>" name="no_telp" id="no_telp" type="text" class="form-control" placeholder="masukkan no_telp...">
                        <?= form_error('no_telp', '<small class="text-danger">', '</small>'); ?>
                    </div>
                </div>
                <div class="row form-group">
                    <label class="col-md-3 text-md-right" for="alamat">alamat</label>
                    <div class="col-md-9">
                        <input value="<?= set_value('alamat'); ?>" name="alamat" id="alamat" type="text" class="form-control" placeholder="masukkan alamat...">
                        <?= form_error('alamat', '<small class="text-danger">', '</small>'); ?>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-9 offset-md-3">
                        <button type="submit" class="btn btn-primary">Simpan</button>
                        <button type="reset" class="btn btn-secondary">Reset</bu>
                    </div>
                </div>
                <?= form_close(); ?>
            </div>
        </div>
    </div>
</div>