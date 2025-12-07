import 'dart:io';
import 'hitung.dart';

void main() {
  print('     KALKULATOR LINGKARAN');

  print('');

  bool running = true;

  while (running) {
    try {
      // Input jari-jari
      stdout.write('Masukkan jari-jari lingkaran (cm): ');
      String? input = stdin.readLineSync();

      if (input == null || input.trim().isEmpty) {
        print('Input tidak boleh kosong!\n');
        continue;
      }

      // Cek jika user ingin keluar
      if (input.toLowerCase() == 'exit' || input.toLowerCase() == 'keluar') {
        print('\n Terima kasih telah menggunakan kalkulator!\n');
        running = false;
        continue;
      }

      // Parse input menjadi double
      double jariJari = double.parse(input.trim());

      if (jariJari <= 0) {
        print(' Jari-jari harus lebih besar dari 0!\n');
        continue;
      }

      // Hitung nilai-nilai
      double diameter = HitungLingkaran.hitungDiameter(jariJari);
      double keliling = HitungLingkaran.hitungKeliling(jariJari);
      double luas = HitungLingkaran.hitungLuas(jariJari);

      // Tampilkan hasil
      print('HASIL PERHITUNGAN');
      print('Jari-jari (r) : ${jariJari.toStringAsFixed(2)} cm');
      print('DIAMETER');
      print('Rumus : d = 2 × r');
      print('Hasil : ${diameter.toStringAsFixed(2)} cm'.padRight(49) + '║');
      print('KELILING');
      print('Rumus : K = 2 × π × r');
      print('Hasil : ${keliling.toStringAsFixed(2)} cm');
      print('LUAS');
      print('Rumus : L = π × r²');
      print('Hasil : ${luas.toStringAsFixed(2)} cm²');
      print('');
    } catch (e) {
      if (e is FormatException) {
        print('Input tidak valid! Masukkan angka yang benar.\n');
      } else {
        print('Error: ${e.toString()}\n');
      }
    }

    // Tanya apakah ingin menghitung lagi
    stdout.write('Hitung lagi? (y/n): ');
    String? lagi = stdin.readLineSync();

    if (lagi == null ||
        lagi.toLowerCase() == 'n' ||
        lagi.toLowerCase() == 'tidak') {
      print('\n Terima kasih telah menggunakan kalkulator!\n');
      running = false;
    } else {
      print('');
    }
  }
}
