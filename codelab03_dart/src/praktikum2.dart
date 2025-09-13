// langkah 1


void main() {
  int counter = 0; // deklarasi dan inisialisasi variabel counter

  while (counter < 33) {
    print(counter);
    counter++;
  }

  // langka 2 
  //Kode error karena variabel counter belum dideklarasikan. Setelah diperbaiki dengan int counter = 0;, program mencetak angka 0 sampai 32.
  
  // langkah 3
  //  Kode error karena counter belum dideklarasikan.
  do {
  print(counter);
  counter++;
} while (counter < 77);
}
