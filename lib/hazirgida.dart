import 'package:flutter/material.dart';
import 'package:marketuygulama/urunEkleme.dart';

class Hazirgida extends StatefulWidget {
  const Hazirgida({super.key});

  @override
  State<Hazirgida> createState() => _HazirgidaState();
}

class _HazirgidaState extends State<Hazirgida> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2019/09/06/07/59/chocolate-4455840_1280.jpg",
                  urunAd: "Çikolata",
                  urunFiyat: "40 TL",
                  urunDetayAciklama:
                      "Yoğun kakao lezzetiyle kaliteli çikolatalar, tatlı krizlerinizin vazgeçilmezi olacak!",
                  mevcut: true,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2020/05/01/09/13/cupcakes-5116009_960_720.jpg",
                  urunAd: "Kap Kek",
                  urunFiyat: "60 TL",
                  urunDetayAciklama:
                      "Yumuşacık kek dokusu ve enfes aromalarıyla kap kek çeşitlerimizi hemen deneyin!",
                  mevcut: true,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2016/11/22/18/52/cake-1850011_1280.jpg",
                  urunAd: "Kek",
                  urunFiyat: "110 TL",
                  urunDetayAciklama:
                      "Çay ve kahvenin yanında mükemmel bir eşlikçi! Ev yapımı lezzetinde taze kekler sizi bekliyor.",
                  mevcut: true,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2019/08/12/13/45/ice-cream-4401300_1280.jpg",
                  urunAd: "Dondurma",
                  urunFiyat: "70 TL",
                  urunDetayAciklama:
                      "Serinletici ve enfes dondurmalarla tatlı keyfinizi taçlandırın! Çeşit çeşit dondurma alternatifleri burada.",
                  mevcut: true,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2015/05/07/15/08/cookie-756601_1280.jpg",
                  urunAd: "Kurabiye",
                  urunFiyat: "40 TL",
                  urunDetayAciklama:
                      "Çıtır çıtır ve lezzetli kurabiyeler, tatlı molalarınızı daha keyifli hale getiriyor!",
                  mevcut: true,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2021/09/29/20/19/belgian-waffles-6668373_1280.jpg",
                  urunAd: "Waffle",
                  urunFiyat: "170 TL",
                  urunDetayAciklama:
                      "Çikolata, meyve ve fındık ezmesiyle zenginleştirilmiş çıtır waffle çeşitleriyle lezzet şöleni yaşayın!",
                  mevcut: true,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
