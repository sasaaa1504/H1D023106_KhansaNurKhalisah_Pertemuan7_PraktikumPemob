# Praktikum Pemrograman Mobile
**Nama:** Khansa Nur Khalisah <br>
**NIM:** H1D023106 <br>
**Shift:** B/E <br>

---
## Dokumentasi

<img src="https://github.com/sasaaa1504/H1D023106_KhansaNurKhalisah_Pertemuan7_PraktikumPemob/blob/main/docs/image.png" alt="image" width="500px">

## 📚 Tugas 5 - Pertemuan 7 Kalkulator Lingkaran 

## 📂 Struktur File

### 1. **hitung.dart**
File ini berisi class `HitungLingkaran` dengan method-method perhitungan:

#### **Fungsi-fungsi:**
- `hitungLuas(double jariJari)` → Menghitung luas lingkaran
  - **Rumus:** L = π × r²
  - **Return:** double (luas dalam cm²)
  
- `hitungKeliling(double jariJari)` → Menghitung keliling lingkaran
  - **Rumus:** K = 2 × π × r
  - **Return:** double (keliling dalam cm)
  
- `hitungDiameter(double jariJari)` → Menghitung diameter lingkaran
  - **Rumus:** d = 2 × r
  - **Return:** double (diameter dalam cm)

- `hitungLuasDariDiameter(double diameter)` → Menghitung luas dari diameter
- `hitungKelilingDariDiameter(double diameter)` → Menghitung keliling dari diameter

#### **Konstanta:**
- `pi = 3.14` → Nilai PI yang digunakan untuk perhitungan

---

### 2. **main.dart**
File utama yang menjalankan aplikasi konsol interaktif.

#### **Fitur:**
- ✅ Input jari-jari dari user via keyboard
- ✅ Validasi input (harus angka & lebih besar dari 0)
- ✅ Menampilkan hasil perhitungan dengan format rapi
- ✅ Opsi untuk menghitung ulang tanpa restart program
- ✅ Opsi keluar dengan command "exit" atau "keluar"
- ✅ Error handling untuk input yang tidak valid


## 🚀 Cara Menjalankan


```bash
dart run main.dart
```