void main() {
  double totalBelanja = 150000;
  double hitungDiskonPersen(double totalBelanja, bool member){
    double diskon = 0;
    
    if (totalBelanja >= 100000){
      diskon = 10;
      
      if (member == true ){
        diskon = diskon + 5;
      }
    }
    return diskon;
  }
  double hitungPotongan(double totalBelanja, double diskonPersen){
    double potongan = totalBelanja * diskonPersen / 100;
     
   if (potongan > 25000);{
     potongan = 25000;
   }
    return potongan;
  }
  double hitungTotalBayar(double totalBelanja, double potongan){
    double totalBayar = totalBelanja - potongan;
    return totalBayar;
  }
  bool member = true;
  double diskonPersen = hitungDiskonPersen(totalBelanja, member);
  double potongan = hitungPotongan(totalBelanja, diskonPersen);
  double totalBayar = hitungTotalBayar(totalBelanja, potongan);
  print ("Total Belanja : Rp$totalBelanja");
  print ("Diskon Ente : Rp$diskonPersen%");
  print ("Potongan Ente : Rp$potongan");
  print ("Total Bayar : Rp$totalBayar");
} 