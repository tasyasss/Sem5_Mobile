import 'package:jobsheet3/input_validation.dart';
import 'package:jobsheet3/bmi_calculation.dart';
import 'package:jobsheet3/history_feature.dart';

void main() {
  List<Map<String, dynamic>> riwayat = [];

  if (validasiInput(170, 65)) {
    riwayat.add(hitungBMI(170, 65));
  }
  if (validasiInput(165, 75)) {
    riwayat.add(hitungBMI(165, 75));
  }
  if (validasiInput(180, 85)) {
    riwayat.add(hitungBMI(180, 85));
  }

  tampilkanRiwayat(riwayat);
}
