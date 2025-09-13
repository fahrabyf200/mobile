void main () {
  // langkah 1
  //Kode error karena variabel tidak dideklarasikan dan penulisan Index/index tidak konsisten.
  for (int index = 10; index < 27; index++) {


    // langkah 2
    // Kode awal error karena If/Else If salah kapital dan variabel tidak konsisten.
    if (index == 21) break;                // berhenti kalau index = 21
    else if (index > 1 && index < 7) continue; // skip angka 2 sampai 6
    print(index);
  }
}
