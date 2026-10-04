// Tugas Assignment (Laundry)
// Nama : Ahmad ilyas
// NIM  : 1125170130


void main() {
  double beratLaundry = 3;
  String layanan = 'Express';

  Map<String, dynamic> laundry = {
    'berat': beratLaundry,
    'layanan': layanan,
  };

  cekLaundry(laundry);
}

cekLaundry(Map<String, dynamic> laundry) {
  double berat = laundry['berat'];
  String layanan = laundry['layanan'];

  // Cek berat laundry
  if (berat < 2) {
    print('Berat kurang dari 2 kg');
    berat = 2;
    print('Berat dihitung menjadi 2 kg');
  } else {
    print('Berat laundry $berat kg');
  }

  // Tarif laundry Rp7.000/kg
  double hargaDasar = berat * 7000;

  print('Tarif Rp7000/kg');
  print('Harga dasar Rp$hargaDasar');

  // Cek jenis layanan
  if (layanan == 'Express') {
    double tambahan = hargaDasar * 50 / 100;
    double total = hargaDasar + tambahan;

    print('Menggunakan layanan Express');
    print('Tambahan 50% Rp$tambahan');
    print('Total pembayaran Rp$total');
  } else {
    double total = hargaDasar;

    print('Menggunakan layanan Regular');
    print('Tidak ada tambahan biaya');
    print('Total pembayaran Rp$total');
  }
}