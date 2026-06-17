<?php
// PendaftaranReguler.php
require_once 'Pendaftaran.php';

class PendaftaranReguler extends Pendaftaran {
    // Properti tambahan spesifik
    private $pilihanProdi;
    private $lokasiKampus;

    // Constructor untuk menginisialisasi properti induk dan properti anak
    public function __construct($id_pendaftaran, $nama_calon, $asal_sekolah, $nilai_ujian, $biaya_pendaftaran_dasar, $pilihanProdi = null, $lokasiKampus = null) {
        // Memanggil constructor dari class induk (Pendaftaran)
        parent::__construct($id_pendaftaran, $nama_calon, $asal_sekolah, $nilai_ujian, $biaya_pendaftaran_dasar);
        $this->pilihanProdi = $pilihanProdi;
        $this->lokasiKampus = $lokasiKampus;
    }

    // Metode Query Spesifik menggunakan PDO
    public static function getDaftarReguler($db) {
        $query = "SELECT id_pendaftaran, nama_calon, asal_sekolah, nilai_ujian, biaya_pendaftaran_dasar, pilihan_prodi, lokasi_kampus 
                  FROM tabel_pendaftaran 
                  WHERE jalur_pendaftaran = 'Reguler'";
        
        $stmt = $db->prepare($query);
        $stmt->execute();
        
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Mengimplementasikan abstract method dari class induk (dikosongkan dulu untuk Tahap 5)
    public function hitungTotalBiaya() {
        // Akan diimplementasikan lengkap di Tahap 5
        return $this->biaya_pendaftaran_dasar;
    }

    public function tampilkanInfoJalur() {
        echo "Jalur: Reguler, Prodi: " . $this->pilihanProdi . ", Kampus: " . $this->lokasiKampus;
    }
}
?>