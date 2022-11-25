@extends('layouts.app')

@section('content')
<div class="main-content">
    <section class="section">
        @hasanyrole('admin')
        <div class="section-header">
            <h1>Dashboard</h1>
        </div>
          <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
              <div class="card card-statistic-1">
                <div class="card-icon bg-primary">
                  <i class="fa fa-book-open text-white fa-2x"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>TEST</h4>
                  </div>
                  <div class="card-body">
                    {{ App\Models\Exam::count() ?? '0' }}
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
              <div class="card card-statistic-1">
                <div class="card-icon bg-danger">
                  <i class="fa fa-question text-white fa-2x"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>QUESTIONS</h4>
                  </div>
                  <div class="card-body">
                    {{ App\Models\Question::count() ?? '0' }}
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
              <div class="card card-statistic-1">
                <div class="card-icon bg-warning">
                  <i class="fa fa-atlas text-white fa-2x"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>SUBJECTS</h4>
                  </div>
                  <div class="card-body">
                    {{ App\Models\Subject::count() ?? '0' }}
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12">
              <div class="card card-statistic-1">
                <div class="card-icon bg-success">
                  <i class="fa fa-users text-white fa-2x"></i>
                </div>
                <div class="card-wrap">
                  <div class="card-header">
                    <h4>USERS</h4>
                  </div>
                  <div class="card-body">
                    {{ App\Models\User::role('student')->count() ?? '0' }}
                  </div>
                </div>
              </div>
            </div>                  
          </div>
        @endhasanyrole
        @hasrole('student')
        <div class="section-header">
          <h1>Anda akan masuk ke-halaman test dalam : </h1>
        </div>
        <h3>Tata tertib peserta</h3>
        <ul>
          <li>Peserta yang dapat menjalani test adalah peserta yang namanya tertuang dalam daftar hadir dan terdaftar pada waktu dan Tempat Uji Kompetensi yang telah ditentukan</li>
          <li>Peserta wajib membawa dan menunjukkan Kartu Tanda Peserta Seleksi (KTPS) dan KTP/NIK kepada Pegawas Ujian</li>
          <li>Peserta wajib melakukan verifikasi data sebelum masuk ruangan tes untuk menjalani pra-tes dan latihan</li>
          <li>Peserta yang datang pada saat/sesudah pra-tes berlangsung tidak diperkenankan mengikuti TKD. Peserta wajib memastikan kehadirannya di lokasi tes pada saat proses verifikasi data berlangsung</li>
          <li>Peserta wajib menandatangani daftar hadir</li>
          <li>Peserta wajib menempati kursi yang telah ditentukan panitia</li>
          <li>Peserta wajib meletakkan KTPS dan KTP/NIK di atas meja</li>
          <li>Peserta dilarang :
            <ol>
              <li>Keluar masuk ruangan ujian selama pelaksanaan</li>
              <li>Membuat catatan-catatan di meja, atau bekerja sama dengan peserta yang lain, atau tindakan lain yang dapat  dikategorikan sebagai tindakan kecurangan/mengarah kepada kecurangan</li>
              <li>Mengaktifkan Handphone selama proses pelaksanaan ujian</li>
              <li>Menggunakan kalkulator dan alat hitung lainnya</li>
              <li>Mengganggu peserta lain selama sesi berlangsung.</li>
            </ol>
          </li>
        </ul>
        <h3>Tata cara pengerjaan</h3>
        <ul>
          <li>Durasi tes akan berlangsung selama 90 menit. Waktu tes akan tampil di layar komputer dan menghitung mundur saat soal tes mulai diakses. Butir soal akan muncul di layar komputer satu per satu.</li>
          <li>Menjawab soal tes dapat dilakukan dengan 2 cara: memilih jawaban benar menggunakan mouse atau memilih jawaban benar dengan menekan keyboard (huruf A atau B atau C atau D atau E).</li>
          <li>Jika terjadi salah pilih jawaban, peserta dapat memperbaiki jawaban dengan cara mengganti pilihan dengan jawaban yang dianggap benar. Jawaban Anda otomatis akan diganti dengan pilihan jawaban yang terakhir. Mengganti jawaban beberapa kali dapat dilakukan dan tidak mengurangi nilai peserta, namun harus dipertimbangkan waktunya.</li>
          <li>Untuk memudahkan peserta mengidentifikasi kelengkapan jawaban, soal-soal yang belum dijawab ditandai dengan warna merah pada sisi kanan layar. Indikator Soal Ujian tersebut akan otomatis berubah menjadi warna hijau setelah peserta menjawab soal.</li>
          <li>Aplikasi CAT akan berhenti secara otomatis ketika waktu tes berakhir (hitungan mundur menjadi angka 0).</li>
        </ul>
        <h3>Notes :</h3>
        <ul>
          <li>Apabila terjadi kegagalan dalam pelaksanaan sesi (misalnya karena aliran listrik padam), maka Unit Kerja TUK akan menjadwal ulang sesi yang gagal dilaksanakan dengan tidak menggeser jadwal sesi lain yang telah ditetapkan</li>
          <li>Untuk sesi yang sedang berjalan dan mengalami kegagalan maka sesi tersebut akan diteruskan kembali setelah sistem aplikasi berjalan normal dan sesi berikutnya akan dijadwal ulang. Jawaban peserta akan tersimpan dalam sistem, dan peserta dapat melanjutkan mengerjakan soal-soal tes yang belum dijawab</li>
        </ul>
        @endhasrole
    </section>
</div>
@endsection