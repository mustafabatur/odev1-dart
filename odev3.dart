import "dart:io";

void main() {
  print("Ogrenci adini giriniz");
  String? ad = stdin.readLineSync();
  print("Ogrenci soyadini giriniz");
  String? soyad = stdin.readLineSync();

  if (ad == null || soyad == null) {
    print("Gecersiz ogrenci adi veya soyadi girdiniz");
    return;
  }
  Ogrenci ogrenci = Ogrenci(ad, soyad);
  while (true) {
    print("Not giriniz. Ortalama hesaplamak için q ya basınız.");
    String? giris = stdin.readLineSync();
    if (giris == 'q') {
      break;
    }
    int? notDegeri = int.tryParse(giris ?? '');
    if (notDegeri != null) {
      ogrenci.notEkle(notDegeri);
    } else {
      print("Gecersiz not degeri girdiniz");
    }
  }
  double ortalama = ogrenci.ortalamaHesapla();
  print("${ogrenci.ad} ${ogrenci.soyad} ortalaması : $ortalama");
}

class Ogrenci {
  String ad;
  String soyad;
  List<int> not;
  Ogrenci(this.ad, this.soyad) : not = [];

  void notEkle(int notu) {
    not.add(notu);
    print("Notu eklendi : $notu");
  }

  double ortalamaHesapla() {
    if (not.isEmpty) {
      print("Not girilmemiş, hesaplanamıyor");
      return 0;
    }
    double toplam = 0;
    for (int deger in not) {
      toplam += deger;
    }
    return toplam / not.length;
  }
}
