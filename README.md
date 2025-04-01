## SOAL 1 PRAKTIKUM 1
- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

JAWABAN SOAL

![ss tugas](assets/jawaban-asynchronus-1.png)

## SOAL 2 PRAKTIKUM 1

- Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.

![ss tugas](assets/jawaban-soal21.png)

- Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W5: Soal 2"

JAWABAN SOAL 
- DONE
- ![ss tugas](assets/jawaban-soal2.png)

## SOAL 3 PRAKTIKUM 1

- Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W5: Soal 3.

JAWABAN SOAL

Penjelasan Kode Langkah 5
Kode ini merupakan event handler untuk tombol ElevatedButton yang bertugas untuk mengambil data dari Google Books API menggunakan fungsi getData().

1. Fungsi substring(0, 100)
- response.body.substring(0, 100) berarti mengambil 100 karakter pertama dari respon JSON yang didapat dari API.
Ini dilakukan agar tampilan teks tidak terlalu panjang saat ditampilkan di layar.

2. Fungsi catchError((error) {...})
- Jika terjadi error saat melakukan permintaan HTTP (misalnya koneksi gagal, API tidak merespons, atau format data tidak sesuai), maka fungsi catchError akan menangkap error tersebut.
- Error yang ditangkap akan disimpan ke dalam variabel result, lalu ditampilkan sebagai teks dengan pesan:



```kotlin
    An error occurred: <deskripsi error>
```
Ini mencegah aplikasi crash dan memberi tahu pengguna bahwa ada masalah dengan permintaan data.

## SOAL 4 PRAKTIKUM 2

- Jelaskan maksud kode langkah 1 dan 2 tersebut!
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W5: Soal 4"

JAWABAN
1. Langkah 1: Menambahkan Tiga Method Asynchronous
Pada langkah ini, kita menambahkan tiga fungsi returnOneAsync(), returnTwoAsync(), dan returnThreeAsync().

✅ Penjelasan:

- Setiap method menggunakan Future<int>, yang berarti fungsi ini bersifat asynchronous dan akan mengembalikan nilai integer setelah beberapa waktu.

- await Future.delayed(Duration(seconds: 3)) membuat setiap fungsi menunda eksekusi selama 3 detik sebelum mengembalikan nilai masing-masing (1, 2, dan 3).

- Fungsinya mensimulasikan proses yang memerlukan waktu, seperti mengambil data dari API atau database.

2. Langkah 2: Menggunakan count() untuk Menjumlahkan Nilai
Pada langkah ini, kita menambahkan fungsi count(), yang memanggil ketiga fungsi dari langkah 1 dan menjumlahkan hasilnya.

✅ Penjelasan:

- int total = 0; → Inisialisasi variabel total untuk menyimpan hasil penjumlahan.
- await returnOneAsync(); → Menunggu 3 detik, lalu mendapatkan angka 1.
- await returnTwoAsync(); → Menunggu 3 detik lagi, lalu mendapatkan angka 2.
- await returnThreeAsync(); → Menunggu 3 detik lagi, lalu mendapatkan angka 3.
- Hasil akhirnya adalah 1 + 2 + 3 = 6.
- setState(() { result = total.toString(); }); → Memperbarui UI untuk menampilkan hasil akhir.

KESIMPULAN 

- Langkah 1 membuat tiga fungsi asynchronous yang masing-masing mengembalikan angka setelah 3 detik.
- Langkah 2 menjumlahkan hasil dari ketiga fungsi tersebut dan menampilkannya di layar.
- Total waktu eksekusi adalah 3 + 3 + 3 = 9 detik sebelum hasilnya muncul di UI.

2. Hasil Gif Running aplikasi sementara 
## Screen Capture
GIF Soal 4 Praktikum 2
![GIF](screencapture/w5-soal4.gif)

