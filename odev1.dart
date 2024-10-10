import 'dart:io';

void main() {
  print("İlk sayıyı gir");
  double? sayi1 = double.tryParse(stdin.readLineSync() ?? '');

  print("İkinci sayıyı gir");
  double? sayi2 = double.tryParse(stdin.readLineSync() ?? '');

  print("İşlemi seçin (+,-,*,/");
  String? islem = stdin.readLineSync();

  if (sayi1 == null || sayi2 == null) {
    print(" Geçersiz sayı girdiniz");
    return;
  }

  double sonuc;

  switch (islem) {
    case '+':
      sonuc = sayi1 + sayi2;
      print("Sonuç: $sonuc");

      break;
    case '-':
      sonuc = sayi1 - sayi2;
      print("Sonuç: $sonuc");
      break;
    case '*':
      sonuc = sayi1 * sayi2;
      print("Sonuç: $sonuc");
      break;
    case '/':
      if (sayi2 == 0) {
        print("sayı 0'a bölünemez");
      } else {
        sonuc = sayi1 / sayi2;
        print("Sonuç: $sonuc");
      }
      break;
    default:
      print("Hatalı işlem girdiniz");
  }
}
