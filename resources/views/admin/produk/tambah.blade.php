<p class="text-right">
	<a href="{{ asset('admin/produk') }}" class="btn btn-success btn-sm">
		<i class="fa fa-backward"></i> Kembali
	</a>
</p>
<hr>
@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<form action="{{ asset('admin/produk/tambah_proses') }}" method="post" enctype="multipart/form-data" accept-charset="utf-8">
{{ csrf_field() }}

<div class="form-group row">
	<label class="col-sm-3 control-label text-right">Kategori &amp; Status Layanan</label>
	<div class="col-sm-3">
		<select name="id_kategori_produk" class="form-control">
			<?php foreach($kategori_produk as $kategori_produk) { ?>
				<option value="<?php echo $kategori_produk->id_kategori_produk ?>"><?php echo $kategori_produk->nama_kategori_produk ?></option>
			<?php } ?>
		</select>
	</div>
	<div class="col-sm-3">
		<select name="status_produk" class="form-control">
			<option value="Publish">Publikasikan</option>
			<option value="Draft">Simpan sebagai draft</option>
		</select>
	</div>
</div>

<div class="form-group row">
	<label class="col-sm-3 control-label text-right">Nama &amp; Kode Layanan <span class="text-danger">*</span></label>
	<div class="col-sm-6">
		<input type="text" name="nama_produk" class="form-control" placeholder="Nama Layanan"  value="{{ old('nama_produk') }}">
		<small class="text-gray">Setiap awal kata gunakan huruf capital. Misal: <strong>Taman Hias</strong></small>
	</div>
	<div class="col-sm-2">
		<input type="text" name="kode_produk" class="form-control" placeholder="Kode Layanan"  value="{{ old('kode_produk') }}">
		<small class="text-gray">Huruf capital. Misal: <strong>WDEV</strong></small>
	</div>
</div>



<div class="form-group ">
	<label>Deskripsi Layanan</label>
	<textarea name="isi" id="isi"  class="form-control konten" placeholder="Deskripsi Layanan">{{ old('isi') }}</textarea>
</div>

<div class="form-group row">
	<label class="col-sm-3 control-label text-right">Deskripsi Ringkas &amp; Keywords Layanan (untuk pencarian Google)</label>
	<div class="col-sm-4">
		<textarea name="deskripsi" class="form-control" placeholder="Deskripsi Layanan">{{ old('deskripsi')  }}</textarea>
		<small class="text-gray">Penjelasan secara ringkas Layanan</small>
	</div>
	<div class="col-sm-4">
		<textarea name="keywords" class="form-control" placeholder="Keywords (untuk pencarian Google)">{{ old('keywords')  }}</textarea>
		<small class="text-gray">Gunakan koma sebagai pemisah, misal: <strong>taman minimalis, kolam koi, jasa sewa taman</strong></small>
	</div>
</div>

<div class="form-group row">
	<label class="col-sm-3 control-label text-right">Upload Thumbnail</label>
	<div class="col-sm-9">
		<input type="file" name="gambar" class="form-control"  placeholder="Upload gambar" id="file">
		<div id="imagePreview"></div>
	</div>
</div>


<div class="form-group row">
	<label class="col-sm-3 control-label text-right"></label>
	<div class="col-sm-9">
		<div class="form-group btn-group pull-right">
			<button type="submit" name="submit" class="btn btn-success "><i class="fa fa-save"></i> Simpan Data</button>
			<input type="reset" name="reset" class="btn btn-info " value="Reset">
		</div>
	</div>
</div>
</form>
