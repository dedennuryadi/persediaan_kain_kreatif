<div class="row justify-content-center">
    <div class="col-md-8">
        <div class="card shadow-sm border-bottom-primary">
            <div class="card-header bg-white py-3">
                <div class="row">
                    <div class="col">
                        <h4 class="h5 align-middle m-0 font-weight-bold text-primary">
                            Form Input Kain Masuk
                        </h4>
                    </div>
                    <div class="col-auto">
                        <a href="<?= base_url('barangmasuk') ?>" class="btn btn-sm btn-secondary btn-icon-split">
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
                <?= form_open('', [], ['id_kain_masuk' => $id_kain_masuk, 'user_id' => $this->session->userdata('login_session')['user']]); ?>
                <div class="row form-group">
                    <label class="col-md-4 text-md-right" for="id_kain_masuk">ID Transaksi Kain Masuk</label>
                    <div class="col-md-4">
                        <input value="<?= $id_kain_masuk; ?>" type="text" readonly="readonly" class="form-control">
                        <?= form_error('id_kain_masuk', '<small class="text-danger">', '</small>'); ?>
                    </div>
                </div>
                <div class="row form-group">
                    <label class="col-md-4 text-md-right" for="tanggal_masuk">Tanggal Masuk</label>
                    <div class="col-md-4">
                        <input value="<?= set_value('tanggal_masuk', date('Y-m-d')); ?>" name="tanggal_masuk" id="tanggal_masuk" type="text" class="form-control date" placeholder="Tanggal Masuk...">
                        <?= form_error('tanggal_masuk', '<small class="text-danger">', '</small>'); ?>
                    </div>
                </div>
             
                <div class="row form-group">
                    <label class="col-md-4 text-md-right" for="nama_supplier">nama Supplier</label>
                    <div class="col-md-5">
                        <div class="input-group">
                            <select name="nama_supplier" id="nama_supplier" class="custom-select">
                                <option value="" selected disabled>Pilih Supplier</option>
                                <?php foreach ($supply as $sg) : ?>
                                    <option value="<?= $sg['id_supply'] ?>"><?= $sg['id_supply'] . ' | ' . $sg['nama_supplier'] ?></option>
                                <?php endforeach; ?>
                            </select>
                            <div class="input-group-append">
                                <a class="btn btn-primary" href="<?= base_url('supply/add'); ?>"><i class="fa fa-plus"></i></a>
                            </div>
                        </div>
                        <?= form_error('nama_supplier', '<small class="text-danger">', '</small>'); ?>
                    </div>
                </div>

                <div class="row form-group">
                    <label class="col-md-4 text-md-right" for="barang_id">Corak Kain</label>
                    <div class="col-md-5">
                        <div class="input-group">
                            <select name="barang_id" id="barang_id" class="custom-select">
                                <option value="" selected disabled>Pilih Corak kain</option>
                                <?php foreach ($barang as $b) : ?>
                                    <option <?= $this->uri->segment(3) == $b['id_barang'] ? 'selected' : '';  ?> <?= set_select('barang_id', $b['corak_kain']) ?> value="<?= $b['id_barang'] ?>"><?= $b['id_barang'] . ' | ' . $b['corak_kain'] ?></option>
                                <?php endforeach; ?>
                            </select>
                            <div class="input-group-append">
                                <a class="btn btn-primary" href="<?= base_url('barang/add'); ?>"><i class="fa fa-plus"></i></a>
                            </div>
                        </div>
                        <?= form_error('barang_id', '<small class="text-danger">', '</small>'); ?>
                    </div>
                </div>
                <div class="row form-group">
                    <label class="col-md-4 text-md-right" for="stok">Stok</label>
                    <div class="col-md-5">
                        <input readonly="readonly" id="stok" type="number" class="form-control">
                    </div>
                </div>
                <div class="row form-group">
                    <label class="col-md-4 text-md-right" for="jumlah_masuk">Quantity Masuk</label>
                    <div class="col-md-5">
                        <div class="input-group">
                            <input value="<?= set_value('jumlah_masuk'); ?>" name="jumlah_masuk" id="jumlah_masuk" type="number" class="form-control" placeholder="Jumlah Masuk...">
                            <div class="input-group-append">
                                <span class="input-group-text" id="satuan">Satuan</span>
                            </div>
                        </div>
                        <?= form_error('jumlah_masuk', '<small class="text-danger">', '</small>'); ?>
                    </div>
                </div>
                <div class="row form-group">
                    <label class="col-md-4 text-md-right" for="penyimpanan">Penyimpanan</label>
                    <div class="col-md-5">
                        <input value="<?= set_value('penyimpanan'); ?>" name="penyimpanan" id="penyimpanan" type="text" class="form-control" placeholder="lokasi penyimpanan...">
                        <?= form_error('penyimpanan', '<small class="text-danger">', '</small>'); ?>
                    </div>
                </div>
                <div class="row form-group">
                    <label class="col-md-4 text-md-right" for="total_stok">Total Stok</label>
                    <div class="col-md-5">
                        <input readonly="readonly" id="total_stok" type="number" class="form-control">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col offset-md-4">
                        <button type="submit" class="btn btn-primary">Simpan</button>
                        <button type="reset" class="btn btn-secondary">Reset</button>
                    </div>
                </div>
                <?= form_close(); ?>
            </div>
        </div>
    </div>
</div>