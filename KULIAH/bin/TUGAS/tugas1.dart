import 'dart:io';

void main() {
  print("== APLIKASI PENGHITUNG GAJI KARYAWAN ==");
  stdout.write("Masukan Nama : ");
  String nama = (stdin.readLineSync()!);
  stdout.write("Masukan Jam Kerja(per minggu) : ");
  int jam_kerja = int.parse(stdin.readLineSync()!);
  stdout.write("Upah Per Jam : ");
  double upah_per_jam = double.parse(stdin.readLineSync()!);
  stdout.write("Status Karyawan (true = Tetap, false = Kontrak) : ");
  bool status_kar = stdin.readLineSync()! == 'true';

  double gaji_kotor = (jam_kerja * upah_per_jam);
  double pajak = status_kar ? gaji_kotor * 0.1 : gaji_kotor * 0.05;
  double gaji_bersih = gaji_kotor - pajak;

  print("== DAFTAR GAJI ==");
  print("Nama        : $nama");
  print("Gaji Kotor  : Rp.${gaji_kotor.toInt()}");
  print("Pajak       : Rp.${pajak.toInt()}");
  print("Gaji Bersih : Rp.${gaji_bersih.toInt()}");
}
