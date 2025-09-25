void main(List<String> args) {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var number = (1, 2);
  print('Before swap: $number');

  var swapped = tukar(number);
  print('After swap: $swapped');

   // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ("Muhammad Farhan Fahraby", 2341720188);
  print(mahasiswa);

  var mahasiswa2 = ("Muhammad Farhan Fahraby / 2341720188", a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

