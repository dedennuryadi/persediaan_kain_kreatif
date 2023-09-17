<?= $this->session->flashdata('pesan'); ?>
<div class="card shadow-sm border-bottom-primary">
    <div class="card-header bg-white py-3">
        <div class="row">
            <div class="col">
                <h4 class="h5 align-middle m-0 font-weight-bold text-primary">
                    Data Kain
                </h4>
            </div>
            <?php if (is_admin()) : ?>
            <div class="col-auto">
                <a href="<?= base_url('barang/add') ?>" class="btn btn-sm btn-primary btn-icon-split">
                    <span class="icon">
                        <i class="fa fa-plus"></i>
                    </span>
                    <span class="text">
                        Tambah Kain Baru
                    </span>
                </a>
            </div>
            <?php endif; ?>
        </div>
    </div>
    <div class="card-body">
 			<div class="table-responsive">
 				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
 					<thead>
                <tr>
                    <th>No. </th>
                    <th>ID Barang</th>
                    <th>Corak Kain</th>
                    <th>No Benang</th>
                    <th>kelompok Jenis Kain</th>
                    <th>Kontruksi</th>
                    <th>Stok</th>
                    <th>Satuan</th>
                    <?php if (is_admin()) : ?>
                    <th>Aksi</th>
                    <?php endif; ?>
                </tr>
            </thead>
            <tbody>
                <?php
                $no = 1;
                if ($barang) :
                    foreach ($barang as $b) :
                        ?>
                        <tr>
                            <td><?= $no++; ?></td>
                            <td><?= $b['id_barang']; ?></td>
                            <td><?= $b['corak_kain']; ?></td>
                            <td><?= $b['no_benang']; ?></td>
                            <td><?= $b['nama_jenis']; ?></td>
                            <td><?= $b['kontruksi']; ?></td>
                            <td><?= $b['stok']; ?></td>
                            <td><?= $b['nama_satuan']; ?></td>
                            <?php if (is_admin()) : ?>
                            <td>
                                <a href="<?= base_url('barang/edit/') . $b['id_barang'] ?>" class="btn btn-warning btn-circle btn-sm"><i class="fa fa-edit"></i></a>
                                <a onclick="return confirm('Yakin ingin hapus?')" href="<?= base_url('barang/delete/') . $b['id_barang'] ?>" class="btn btn-danger btn-circle btn-sm"><i class="fa fa-trash"></i></a>
                            </td>
                            <?php endif; ?>
                        </tr>
                    <?php endforeach; ?>
                <?php else : ?>
                    <tr>
                        <td colspan="7" class="text-center">
                            Data Kosong
                        </td>
                    </tr>
                <?php endif; ?>
            </tbody>
        </table>
    </div>
</div>