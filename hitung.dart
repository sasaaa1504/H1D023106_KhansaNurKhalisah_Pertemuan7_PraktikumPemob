import 'dart:math';

class HitungLingkaran {
  // Konstanta PI
  static const double pi = 3.14;

  // Menghitung luas lingkaran
  // Rumus: π × r²
  static double hitungLuas(double jariJari) {
    if (jariJari <= 0) {
      throw ArgumentError('Jari-jari harus lebih besar dari 0');
    }
    return pi * jariJari * jariJari;
  }

  // Menghitung keliling lingkaran
  // Rumus: 2 × π × r
  static double hitungKeliling(double jariJari) {
    if (jariJari <= 0) {
      throw ArgumentError('Jari-jari harus lebih besar dari 0');
    }
    return 2 * pi * jariJari;
  }

  // Menghitung diameter dari jari-jari
  static double hitungDiameter(double jariJari) {
    if (jariJari <= 0) {
      throw ArgumentError('Jari-jari harus lebih besar dari 0');
    }
    return 2 * jariJari;
  }

  // Menghitung luas dari diameter
  static double hitungLuasDariDiameter(double diameter) {
    if (diameter <= 0) {
      throw ArgumentError('Diameter harus lebih besar dari 0');
    }
    double jariJari = diameter / 2;
    return hitungLuas(jariJari);
  }

  // Menghitung keliling dari diameter
  static double hitungKelilingDariDiameter(double diameter) {
    if (diameter <= 0) {
      throw ArgumentError('Diameter harus lebih besar dari 0');
    }
    return pi * diameter;
  }
}
