void main() {
  // Membuat list dengan panjang 5, default value = null
  // Gunakan String? agar bisa menampung null
  final List<String?> list = List.filled(5, null);

  // Mengisi index ke-1 dengan Nama
  list[1] = "Farhan Fahraby";

  // Mengisi index ke-2 dengan NIM
  list[2] = "234567890";

  // Menampilkan isi list
  print("Isi list: $list");

  // Menampilkan tiap elemen list
  for (int i = 0; i < list.length; i++) {
    print("Index $i: ${list[i]}");
  }
}
