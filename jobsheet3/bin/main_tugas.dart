import 'dart:io';

void main() {
  stdout.write("Masukkan angka: ");
  int? angka = int.tryParse(stdin.readLineSync()!);

  if (angka == null) {
    print("Input tidak valid!");
    return;
  }

  if (angka % 2 == 0) {
    print("$angka adalah bilangan genap.");
  } else {
    print("$angka adalah bilangan ganjil.");
  }
}
