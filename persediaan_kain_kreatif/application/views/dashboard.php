<?= $this->session->flashdata('pesan'); ?>
<div class="card shadow-sm border-bottom-primary">
    <div class="card-header bg-white py-3">
        <div class="row">

   <div class="row">
    <div class="col-md-10">
    <div class="card shadow mb-4">
            <div class="card-header bg-warning py-3">
                <h6 class="m-0 font-weight-bold text-white text-center">Data Stok Kain Minimum</h6>
            </div>
            <div class="table-responsive">
            <table class="table table-striped w-100 dt-responsive nowrap" id="dataTable">
                    <thead>
                        <tr>
                            <th>Corak Kain</th>
                            <th>Stok</th>
                            <th>Pasok</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        if ($barang_min) :
                            foreach ($barang_min as $b) :
                                ?>
                                <tr>
                                    <td><?= $b['corak_kain']; ?></td>
                                    <td><?= $b['stok']; ?></td>
                                    <td>
                                        <a href="<?= base_url('barangmasuk/add/') . $b['id_barang'] ?>" class="btn btn-warning btn-sm"><i class="fa fa-plus"></i></a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        <?php else : ?>
                            <tr>
                                <td colspan="3" class="text-center">
                                    Tidak ada barang stok minim
                                </td>
                            </tr>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div> 
    <div class="row">
    <div class="col-md-10">
    <div class="card shadow mb-4">
            <div class="card-header bg-primary py-2">
                <h6 class="m-0 font-weight-bold text-white text-center">Data Stok Kain Departemen Kreatif</h6>
            </div>
            <div class="table-responsive">
            <table class="table table-striped w-100 dt-responsive nowrap" id="dataTable">
                    <thead>
                        <tr>
                            <th>ID Barang</th>
                            <th>Corak Kain</th>
                            <th>No Benang</th>
                            <th>Jenis Benang</th>
                            <th>Kontruksi</th>
                            <th>Stok</th>
                            <th>Satuan</th>
                        </tr>
                    </thead>
                    <tbody>
                            <?php foreach ($data['barang'] as $b) : ?>
                                <tr>
                                <td><?= $b['id_barang']; ?></td>
                                <td><?= $b['corak_kain']; ?></td>
                                <td><?= $b['no_benang']; ?></td>
                                <td><?= $b['nama_jenis']; ?></td>
                                <td><?= $b['kontruksi']; ?></td>
                                <td><?= $b['stok']; ?></td>
                                <td><?= $b['nama_satuan']; ?></td>
                                </tr>
                            <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div> 
</div>