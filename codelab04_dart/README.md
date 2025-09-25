# Praktikum 1: Eksperimen Tipe Data List
Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.

Langkah 1:
Ketik atau salin kode program berikut ke dalam void main().

var list = [1, 2, 3];
assert(list.length == 3);
assert(list[1] == 2);
print(list.length);
print(list[1]);

list[1] = 1;
assert(list[1] == 1);
print(list[1]);

Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!
Perbaikan yang aku lakukan:
a. Menambahkan void main() agar sesuai dengan standar program Dart.

b. Menambahkan komentar supaya lebih mudah dipahami.

c. Menggunakan string interpolation (${...}) saat print biar lebih informatif.

List.filled(5, null) artinya membuat list dengan panjang 5 dan setiap elemen berisi null.
Karena list masih bisa diubah (mutable), meskipun variabelnya final, kita tetap bisa mengganti isi elemen list.
final hanya mencegah kita mereassign variabel list ke list baru

# praktikum 2 Eksperimen Tipe Data Set

Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().

var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(halogens);

Tidak ada error.
Penjelasan: Kurung kurawal {} dengan isi elemen tanpa pasangan key:value otomatis dikenali sebagai Set. Set berisi elemen unik, tidak berindeks, dan urutannya tidak selalu sama dengan saat deklarasi.


Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.


Masalah: names3 bukan Set, tetapi Map kosong ({} dianggap Map jika tidak didefinisikan tipenya).

Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

var names1 = <String>{};
Set<String> names2 = {}; // This works, too.
var names3 = {}; // Creates a map, not a set.

print(names1);
print(names2);
print(names3);
Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut. Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.
Perbaiki kode dengan menghapus names3 (karena itu Map, akan dipakai di praktikum selanjutnya).
Lalu tambahkan Nama dan NIM ke dalam names1 dan name
Berhasil, tidak ada error.



# praktikum 3 Eksperimen Tipe Data Maps
Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.


Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().

var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

print(gifts);
print(nobleGases);

Tidak ada error.
Penjelasan:

gifts adalah Map dengan key String dan value campuran (String dan int).

nobleGases adalah Map dengan key int dan value campuran (String dan int).

Dart memperbolehkan ini karena var otomatis menjadi Map<dynamic, dynamic>.


Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

Tidak ada error pada kode awal. Jadi tidak perlu perbaikan.

Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';
Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2).

mhs1 = Map<String, String>() → Map kosong, key & value harus String.

mhs2 = Map<int, String>() → Map kosong, key angka, value String.

gifts dan nobleGases diubah supaya konsisten value-nya jadi String.

Semua Map (gifts, nobleGases, mhs1, mhs2) ditambah elemen nama dan NIM.

Tidak error, karena tipe data sudah sesuai.

# praktikum 4  Eksperimen Tipe Data List: Spread dan Control-flow Operators

Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.

Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().

var list = [1, 2, 3];
var list2 = [0, ...list];
print(list1);
print(list2);
print(list2.length);

Penjelasan: Operator spread (...) menyebarkan isi list1 ke dalam list2.

Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

Penjelasan: ...?list1 mengizinkan null di-spread tanpa error.


Langkah 3:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

list1 = [1, 2, null];
print(list1);
var list3 = [0, ...?list1];
print(list3.length);
Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya!

Jika promoActive = true → ['Home', 'Furniture', 'Plants', 'Outlet']

Jika promoActive = false → ['Home', 'Furniture', 'Plants']

Penjelasan: if dalam list memungkinkan kita menambahkan elemen secara kondisional.

Langkah 4:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
print(nav);
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.

Jika login = 'Manager' → ['Home', 'Furniture', 'Plants', 'Inventory']

Jika login = 'User' → ['Home', 'Furniture', 'Plants']

Perbaikan: Awalnya if (login case 'Manager') salah → ganti dengan if (login == 'Manager').

Langkah 5:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
print(nav2);
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.

Penjelasan: Collection For memudahkan membuat list baru berdasarkan iterasi.
Contoh nyata: bisa dipakai untuk membuat daftar ID otomatis atau list item UI.

Langkah 6:
Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

var listOfInts = [1, 2, 3];
var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
assert(listOfStrings[1] == '#1');
print(listOfStrings);
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan dokumentasikan hasilnya.
Collection For adalah cara cepat untuk membuat list baru dari hasil iterasi tanpa perlu manual for + .add().

# Praktikum 5: Eksperimen Tipe Data Records
Catatan: Tipe data Records mulai diperkenalkan pada Dart versi 3.0. Pastikan Anda sudah setup menggunakan Dart 3.0 atau yang lebih baru.

Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.

Langkah 1:
Ketik atau salin kode program berikut ke dalam fungsi main().
var record = ('first', a: 2, b: true, 'last');
print(record)
Penjelasan: Record menyimpan data dengan positional fields ('first', 'last') dan named fields (a: 2, b: true).


Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Kode berjalan normal di Dart 3.0+, tidak ada error.

Langkah 3:
Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.

Penjelasan: Fungsi tukar() menerima record (int, int) lalu menukar posisi a dan b.

Langkah 4:
Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.

// Record type annotation in a variable declaration:
(String, int) mahasiswa;
print(mahasiswa);
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas. Dokumentasikan hasilnya dan buat laporannya!

Penjelasan: Record bisa dipakai untuk menyimpan data dengan tipe berbeda, misalnya nama (String) dan NIM (int).

Langkah 5:
Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.

var mahasiswa2 = ('first', a: 2, b: true, 'last');

print(mahasiswa2.$1); // Prints 'first'
print(mahasiswa2.a); // Prints 2
print(mahasiswa2.b); // Prints true
print(mahasiswa2.$2); // Prints 'last'
Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!

Penjelasan:

$1 → akses positional field pertama

$2 → akses positional field kedua

a & b → akses named fields

# 7. Tugas Praktikum
1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!
2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
Dalam Dart, ada beberapa jenis parameter:

a. Positional Parameter (wajib diisi sesuai urutan)
void tambah(int a, int b) {
  print(a + b);
}

void main() {
  tambah(3, 5); // 8
}

b. Optional Positional Parameter (boleh diisi atau tidak, ditandai dengan [ ])
void sapa([String? nama]) {
  print('Halo, ${nama ?? "Anonim"}!');
}

void main() {
  sapa();         // Halo, Anonim!
  sapa('Farhan'); // Halo, Farhan!
}

c. Named Parameter (memanggil dengan nama, ditandai { })
void identitas({required String nama, int? umur}) {
  print('Nama: $nama, Umur: ${umur ?? "-"}');
}

void main() {
  identitas(nama: 'Farhan', umur: 20);
}
d. Default Parameter (memberikan nilai default jika tidak diisi)
void greet({String nama = 'Guest'}) {
  print('Halo, $nama!');
}

void main() {
  greet();             // Halo, Guest!
  greet(nama: 'Farhan'); // Halo, Farhan!
}


3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
alam Dart, functions adalah first-class objects, artinya function bisa:

Disimpan ke dalam variabel

Dikirim sebagai parameter

Dikembalikan sebagai return value

void sapa(String nama) => print('Halo, $nama!');

void jalankan(Function f) {
  f('Farhan');
}

void main() {
  var fungsi = sapa;   // function disimpan ke variabel
  fungsi('Budi');

  jalankan(sapa);      // function jadi parameter
}

4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
Anonymous function adalah function yang tidak punya nama, biasanya digunakan sebagai parameter.
void main() {
  var daftar = ['A', 'B', 'C'];

  daftar.forEach((item) {
    print('Huruf: $item');
  });
}


5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
Lexical Scope: variabel hanya bisa diakses sesuai blok/lingkup kode.

Lexical Closures: function dalam Dart bisa "mengingat" variabel dari scope luar, meski sudah keluar dari scope aslinya.
Contoh Lexical Scope:
void main() {
  var a = 10;

  void tampil() {
    print(a); // bisa akses karena masih dalam scope
  }

  tampil();
}
Contoh Lexical Closure:
Function buatCounter() {
  var hitung = 0;

  return () {
    hitung++;
    return hitung;
  };
}

void main() {
  var counter = buatCounter();

  print(counter()); // 1
  print(counter()); // 2
  print(counter()); // 3
}


6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
Dart tidak mendukung return lebih dari satu nilai secara langsung, tapi bisa menggunakan List, Map, atau Record.
Contoh dengan Record (Dart 3.0+):
(String, int) dataMahasiswa() {
  return ('Farhan', 234567);
}

void main() {
  var (nama, nim) = dataMahasiswa();
  print('Nama: $nama, NIM: $nim');
}
Contoh dengan Map:
Map<String, dynamic> data() {
  return {'nama': 'Farhan', 'nim': 234567};
}

void main() {
  var hasil = data();
  print('Nama: ${hasil['nama']}, NIM: ${hasil['nim']}');
}


7. Jelaskan dengan contoh cara membuat return multiple value di Functions!
Return Multiple Values di Functions Dart

Dart tidak bisa langsung return beberapa nilai seperti di bahasa lain. Tapi bisa dilakukan dengan:
a. Menggunakan List
List data() {
  return ['Farhan', 234567];
}

void main() {
  var hasil = data();
  print('Nama: ${hasil[0]}, NIM: ${hasil[1]}');
}
b. Menggunakan Map
Map<String, dynamic> data() {
  return {'nama': 'Farhan', 'nim': 234567};
}

void main() {
  var hasil = data();
  print('Nama: ${hasil['nama']}, NIM: ${hasil['nim']}');
}
c. Menggunakan Record (Dart 3.0+)
(String, int) data() {
  return ('Farhan', 234567);
}

void main() {
  var (nama, nim) = data();
  print('Nama: $nama, NIM: $nim');
}
esimpulan:

Kalau pakai Dart versi lama → gunakan List/Map.

Kalau pakai Dart 3.0+ → lebih praktis dengan Record karena langsung bisa destructuring (var (a, b))