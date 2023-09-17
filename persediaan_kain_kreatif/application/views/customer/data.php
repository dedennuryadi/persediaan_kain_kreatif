<?= $this->session->flashdata('pesan'); ?>
<div class="card shadow-sm border-bottom-primary">
    <div class="card-header bg-white py-3">
        <div class="row">
            <div class="col">
                <h4 class="h5 align-middle m-0 font-weight-bold text-primary">
                    Data customer
                </h4>
            </div>
            <?php if (is_admin()) : ?>
            <div class="col-auto">
                <a href="<?= base_url('customer/add') ?>" class="btn btn-sm btn-primary btn-icon-split">
                    <span class="icon">
                        <i class="fa fa-plus"></i>
                    </span>
                    <span class="text">
                        Tambah customer
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
                    <th>ID customer</th>
                    <th>nama customer</th>
                    <th>No_telp</th>
                    <th>alamat</th>
                    <?php if (is_admin()) : ?>
                    <th>Aksi</th>
                    <?php endif; ?>
                </tr>
            </thead>
            <tbody>
                <?php
                $no = 1;
                if ($customer) :
                    foreach ($customer as $c) :
                        ?>
                        <tr>
                            <td><?= $no++; ?></td>
                            <td><?= $c['id_customer']; ?></td>
                            <td><?= $c['nama_customer']; ?></td>
                            <td><?= $c['no_telp']; ?></td>
                            <td><?= $c['alamat']; ?></td>
                            <?php if (is_admin()) : ?>
                            <td>
                                <a href="<?= base_url('customer/edit/') . $c['id_customer'] ?>" class="btn btn-warning btn-circle btn-sm"><i class="fa fa-edit"></i></a>
                                <a onclick="return confirm('Yakin ingin hapus?')" href="<?= base_url('customer/delete/') . $c['id_customer'] ?>" class="btn btn-danger btn-circle btn-sm"><i class="fa fa-trash"></i></a>
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