<?php
include '../../../config/config.php';

#add produk data
if ($mysqli->query("UPDATE tb_produk SET nama_produk='$_POST[nama_produk]', stok='$_POST[stok]', harga_produk='$_POST[harga]', berat_produk='$_POST[berat]', id_kategori='$_POST[id_kategori]', deskripsi_produk='$_POST[deskripsi]' WHERE id_produk='$_POST[id]'")) {
  #get data id
  $id_produk = $_POST['id'];

  // delete warna
  if ($mysqli->query("DELETE FROM tb_warna WHERE id_produk='$id_produk'")) {
    #menambahkan data warna
    foreach ($_POST['warna'] as $value) {
      $mysqli->query("INSERT INTO tb_warna(id_produk, jenis_warna) VALUES('$id_produk', '$value')");
    }
  }
  // delete warna end

  //delete Ukuran
  if ($mysqli->query("DELETE FROM tb_ukuran WHERE id_produk='$id_produk'")) {
    #menambahkan ukuran
    foreach ($_POST['ukuran'] as $value) {
      $mysqli->query("INSERT INTO tb_ukuran(id_produk, jenis_ukuran) VALUES('$id_produk', '$value')");
    }
  }
  // end delete ukuran

  #menambah gambar
  $jenis_file	= array('png','jpg', 'jpeg');
  $images = $_FILES['gambar'];

  if ($_FILES['gambar']['name']!='') {
    foreach ($_FILES['gambar']['name'] as $key => $value) {
      $filename = $value;
      $file_tmp = $images['tmp_name'][$key];

      $explode = explode('.', $value);
      $validation = strtolower(end($explode));

      if (in_array($validation, $jenis_file)===TRUE) {
        if (move_uploaded_file($file_tmp, '../../../vendor/product_img/'.$filename)) {
          $mysqli->query("INSERT INTO tb_gambar(id_produk, filename) VALUES('$id_produk', '$value')");
        }
      }
    }

  }

  #pergi ke halaman list
  header("Location:../../masterProduk.php");
} else {
  echo "Gagal Memasukan Data";
}

?>
