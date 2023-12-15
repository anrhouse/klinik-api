<?php
    namespace App\Models;
    use Illuminate\Database\Eloquent\Model;

    class Pasien extends Model{
        protected $table    = 'pasien';
        protected $fillable = ['nomor_rm','nama','tanggal_lahir','nomor_telepon','alamat'];
    }
?>