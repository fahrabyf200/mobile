void main() {
  // identitas
  String nama = "Muhammad Farhan Fahraby"; 
  String nim = "2341720188";

  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print("Bilangan prima: $i | Nama: $nama | NIM: $nim");
    }
  }
}

// fungsi untuk cek bilangan prima
bool isPrima(int n) {
  if (n < 2) return false; // 0 dan 1 bukan prima
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}
