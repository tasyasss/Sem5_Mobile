import 'dart:io';

void main() {
  stdout.write("Masukkan angka: ");
  String? input = stdin.readLineSync();
  print("Kamu memasukkan: $input");
}
