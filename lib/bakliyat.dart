import 'package:flutter/material.dart';
import 'package:marketuygulama/urunEkleme.dart';

class Bakliyat extends StatefulWidget {
  const Bakliyat({super.key});

  @override
  State<Bakliyat> createState() => _BakliyatState();
}

class _BakliyatState extends State<Bakliyat> {
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
                      "https://cdn.pixabay.com/photo/2019/04/27/15/09/lentil-4160220_960_720.jpg",
                  urunAd: "Mercimek",
                  urunFiyat: "100 TL",
                  urunDetayAciklama:
                      "Protein ve lif kaynağı olan mercimek, besleyici ve doyurucu yemekler için idealdir. Çorbalar ve salatalar için mükemmel seçim!",
                  mevcut: false,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2014/07/11/22/52/chickpea-390706_960_720.jpg",
                  urunAd: "Nohut",
                  urunFiyat: "70 TL",
                  urunDetayAciklama:
                      "Yüksek protein içeriğiyle sağlıklı tariflerinizin vazgeçilmezi! Haşlanmış, kavrulmuş ya da yemeklerde kullanabileceğiniz taze nohut burada.",
                  mevcut: true,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2021/08/24/18/01/white-beans-6571314_1280.jpg",
                  urunAd: "Fasülye",
                  urunFiyat: "90 TL",
                  urunDetayAciklama:
                      "Doğal ve besleyici kuru fasulye, lezzetli ev yemekleri için en iyi seçim! Yüksek lif ve protein kaynağıdır.",
                  mevcut: true,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2019/09/05/07/27/eat-4453350_960_720.png",
                  urunAd: "Bezelye",
                  urunFiyat: "150 TL",
                  urunDetayAciklama:
                      "Dondurulmuş veya taze seçenekleriyle yemeklerinize tat ve renk katan bezelyeyi hemen sipariş edin!",
                  mevcut: true,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2021/08/22/09/16/kidney-bean-6564631_1280.jpg",
                  urunAd: "Barbunya",
                  urunFiyat: "140 TL",
                  urunDetayAciklama:
                      "Lezzetli ve besleyici barbunya, sıcak yemekler ve zeytinyağlı tarifler için harika bir tercih.",
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
