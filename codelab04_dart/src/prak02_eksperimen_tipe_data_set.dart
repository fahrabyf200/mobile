void main () {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; 

  // Tambahkan elemen ke names1 dengan .add()
  names1.add("Farhan Fahraby"); // Nama
  names1.add("234567890");      // NIM

  // Tambahkan elemen ke names2 dengan .addAll()
  names2.addAll({"Farhan Fahraby", "234567890"});

  print("Isi Set names1: $names1");
  print("Isi Set names2: $names2");
}