# smt5_mobile

 

soal 1
Modifikasilah kode pada baris 3 di VS Code atau Editor Code favorit Anda berikut ini agar mendapatkan keluaran (output) sesuai yang diminta!
void main() {
  for (int i = 18; i >= 9; i--) {
    print('Nama saya adalah Fulan, sekarang berumur $i');
  }
}




Soal 2
Mengapa sangat penting untuk memahami bahasa pemrograman Dart sebelum kita menggunakan framework Flutter ? Jelaskan!
jawab: 
Flutter dibangun dengan bahasa Dart sebagai dasar pemrogramannya.

Dengan memahami Dart, kita lebih mudah memahami logika, struktur, dan sintaks yang digunakan di Flutter.

Dart menyediakan fitur penting seperti Null Safety, async/await, OOP (class, inheritance, polymorphism) yang dipakai langsung dalam pengembangan Flutter.

Banyak error di Flutter sebenarnya berasal dari pemahaman Dart yang kurang.

Intinya: tanpa dasar Dart yang kuat, kita akan kesulitan menguasai Flutter, karena framework hanyalah alat yang berjalan di atas bahasa tersebut.





Soal 3
Rangkumlah materi dari codelab ini menjadi poin-poin penting yang dapat Anda gunakan untuk membantu proses pengembangan aplikasi mobile menggunakan framework Flutter.
jawab:
a. Struktur Dasar Dart

- Fungsi main() sebagai entry point program.

- Variabel, tipe data, operator, kontrol alur (if, for, while).

b. Konsep OOP di Dart

- Class, objek, inheritance, polymorphism, dan encapsulation.

c. Null Safety

- Variabel tidak boleh null kecuali diberi tanda ?.

- Membantu mencegah error null reference.

d. Asynchronous Programming

- Future, async, dan await digunakan untuk operasi yang membutuhkan waktu (misalnya request API).

e. Flutter & Widget

- Flutter menggunakan widget sebagai building block.

- Ada StatelessWidget (UI statis) dan StatefulWidget (UI dinamis).

f. Hot Reload & Hot Restart

- Mempercepat proses development dengan melihat perubahan kode secara langsung.






Soal 4
Buatlah penjelasan dan contoh eksekusi kode tentang perbedaan Null Safety dan Late variabel !
jawab:
Perbedaan Null Safety dan Late Variabel dalam Dart

Null Safety

Menjamin variabel tidak bernilai null, kecuali ditandai dengan ?.

Membantu menghindari error runtime karena null.

Late Variabel

Digunakan saat variabel tidak langsung diinisialisasi, tapi kita yakin akan diisi sebelum digunakan.

Berguna untuk inisialisasi variabel yang berat atau membutuhkan proses lebih dulu.
