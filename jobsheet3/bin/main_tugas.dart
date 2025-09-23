import 'dart:io';

void main() {
  stdout.write("Masukkan angka positif: ");
  int? angka = int.tryParse(stdin.readLineSync()!);

  if (angka == null || angka < 0) {
    print("⚠️ Input tidak valid, masukkan angka positif.");
    return;
  }

  String jenis = (angka % 2 == 0) ? "Genap" : "Ganjil";
  print("🎯 Hasil: $angka adalah bilangan $jenis.");
}
