import 'dart:io';

void main() {
  List<int> sayilar = [];
  for (var i = 0; i < 10; i++) {
    print("Sayı Girin:");
    var sayi = int.parse(stdin.readLineSync()!);
    sayilar.add(sayi);
  }
  List<int> ciftSayilar = [];
  for (var sayi in sayilar) {
    if (sayi % 2 == 0) {
      ciftSayilar.add(sayi);
    }
  }

  if (ciftSayilar.isEmpty) {
    print("Çift sayı bulunamadı");
  } else {
    print("Çift sayilar : $ciftSayilar");
  }
}
