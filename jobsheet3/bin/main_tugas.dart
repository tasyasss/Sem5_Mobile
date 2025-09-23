import 'dart:io';

void main() {
  stdout.write("Masukkan angka positif: ");
  int? angka = int.tryParse(stdin.readLineSync()!);

  if (angka == null || angka < 0) {
    print("⚠️ Input tidak valid, masukkan angka positif.");
    return;
  }

  if (angka % 2 == 0) {
    print("✅ $angka adalah bilangan genap.");
  } else {
    print("✅ $angka adalah bilangan ganjil.");
  }
}
