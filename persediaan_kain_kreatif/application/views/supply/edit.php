<div class="row justify-content-center">
    <div class="col-md-8">
        <div class="card shadow-sm border-bottom-primary">
            <div class="card-header bg-white py-3">
                <div class="row">
                    <div class="col">
                        <h4 class="h5 align-middle m-0 font-weight-bold text-primary">
                            Form Edit data supply
                        </h4>
                    </div>
                    <div class="col-auto">
                        <a href="<?= base_url('supply') ?>" class="btn btn-sm btn-secondary btn-icon-split">
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
                <?= form_open('', [], ['id_supply' => $supply['id_supply']]); ?>
                <div class="row form-group">
                    <label class="col-md-3 text-md-right" for="id_supply">Nama Supplier</label>
                    <div class="col-md-9">
                        <div class="input-group">
                            <input value="<?= set_value('id_supply', $supply['id_supply']); ?>" name="id_supply" id="id_supply" type="text" class="form-control" placeholder="id_supply...">
                        </div>
                        <?= form_error('id_supply', '<small class="text-danger">', '</small>'); ?>
                    </div>
                </div>

                <div class="row form-group">
                    <label class="col-md-3 text-md-right" for="nama_supplier">Nama Supplier</label>
                    <div class="col-md-9">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1"><i class="fa fa-fw fa-user"></i></span>
                            </div>
                            <input value="<?= set_value('nama_supplier', $supply['nama_supplier']); ?>" name="nama_supplier" id="nama_supplier" type="text" class="form-control" placeholder="nama_supplier...">
                        </div>
                        <?= form_error('nama_supplier', '<small class="text-danger">', '</small>'); ?>
                    </div>
                </div>

                <div class="row form-group">
                    <label class="col-md-3 text-md-right" for="no_telp">No Telp</label>
                    <div class="col-md-9">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1"><i class="fa fa-fw fa-phone"></i></span>
                            </div>
                            <input value="<?= set_value('no_telp', $supply['no_telp']); ?>" name="no_telp" id="no_telp" type="text" class="form-control" placeholder="no telp...">
                        </div>
                        <?= form_error('no_telp', '<small class="text-danger">', '</small>'); ?>
                    </div>
                </div>

                <div class="row form-group">
                    <label class="col-md-3 text-md-right" for="alamat">Alamat</label>
                    <div class="col-md-9">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1"><i class="fa fa-fw fa-home"></i></span>
                            </div>
                            <input value="<?= set_value('alamat', $supply['alamat']); ?>" name="alamat" id="alamat" type="text" class="form-control" placeholder="alamat...">
                        </div>
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