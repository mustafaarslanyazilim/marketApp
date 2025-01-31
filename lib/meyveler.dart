import 'package:flutter/material.dart';
import 'package:marketuygulama/urunEkleme.dart';

class Meyveler extends StatefulWidget {
  const Meyveler({super.key});

  @override
  State<Meyveler> createState() => _MeyvelerState();
}

class _MeyvelerState extends State<Meyveler> {
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
                      "https://cdn.pixabay.com/photo/2017/09/26/13/39/apples-2788651_1280.jpg",
                  urunAd: "Elma",
                  urunFiyat: "35 TL",
                  urunDetayAciklama:
                      "Taze, sulu ve doğal elmalarla sağlıklı atıştırmalıklar yapın. Günlük tedarik edilen taze elmalar kapınıza gelsin!",
                  mevcut: false,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2017/01/20/15/06/oranges-1995056_1280.jpg",
                  urunAd: "Portakal",
                  urunFiyat: "50 TL",
                  urunDetayAciklama:
                      "C vitamini deposu portakallarımızla bağışıklığınızı güçlendirin. Kahvaltılarınızda ve içeceklerinizde taptaze portakallar!",
                  mevcut: true,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2016/09/06/14/59/plums-1649316_1280.jpg",
                  urunAd: "Erik",
                  urunFiyat: "80 TL",
                  urunDetayAciklama:
                      "Tatlı ve ekşi aromasıyla harika bir atıştırmalık! Taze, doğal ve besleyici erikleri hemen deneyin.",
                  mevcut: true,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2015/02/27/17/58/bananas-652497_960_720.jpg",
                  urunAd: "Muz",
                  urunFiyat: "150 TL",
                  urunDetayAciklama:
                      " Enerji kaynağı muzlarla sağlıklı ara öğünler hazırlayın. Sporcular ve çocuklar için mükemmel bir besin kaynağı!",
                  mevcut: true,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2018/05/26/10/53/strawberries-3431119_1280.jpg",
                  urunAd: "Çilek",
                  urunFiyat: "350 TL",
                  urunDetayAciklama:
                      "Tatlı ve sulu çileklerimizle lezzet dolu tarifler yapın! Smoothie, tatlı ve salatalar için mükemmel seçim.",
                  mevcut: true,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2022/08/06/15/16/grapevine-7368800_1280.jpg",
                  urunAd: "Üzüm",
                  urunFiyat: "270 TL",
                  urunDetayAciklama:
                      "Taptaze ve tatlı üzümler, sağlıklı atıştırmalıklar ve tatlılar için ideal! Siyah ve yeşil üzüm seçenekleriyle sipariş edebilirsiniz.",
                  mevcut: true,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2017/08/01/08/11/food-2563403_960_720.jpg",
                  urunAd: "Şeftali",
                  urunFiyat: "180 TL",
                  urunDetayAciklama:
                      "Yumuşak dokusu ve tatlı aromasıyla yaz mevsiminin favorisi şeftalileri hemen sipariş edin!",
                  mevcut: true,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2019/10/14/15/00/pears-4549125_960_720.jpg",
                  urunAd: "Armut",
                  urunFiyat: "120 TL",
                  urunDetayAciklama:
                      "Sulu ve tatlı aromasıyla doğal armutlarımız sofralarınıza sağlık ve lezzet katar.",
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
