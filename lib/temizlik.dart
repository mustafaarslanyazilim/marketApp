import 'package:flutter/material.dart';
import 'package:marketuygulama/urunEkleme.dart';

class Temizlik extends StatefulWidget {
  const Temizlik({super.key});

  @override
  State<Temizlik> createState() => _TemizlikState();
}

class _TemizlikState extends State<Temizlik> {
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
                      "https://cdn.pixabay.com/photo/2020/02/08/10/35/soap-4829708_1280.jpg",
                  urunAd: "Sabun",
                  urunFiyat: "50 TL",
                  urunDetayAciklama:
                      "Cildinize dost doğal içerikli sabunlar ile hijyen ve ferahlığı bir arada yaşayın.",
                  mevcut: true,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2014/02/17/13/18/cleaning-268107_1280.jpg",
                  urunAd: "Paspas",
                  urunFiyat: "350 TL",
                  urunDetayAciklama:
                      "Dayanıklı ve etkili temizlik sağlayan paspaslarla zeminlerinizi hijyenik hale getirin!",
                  mevcut: true,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2013/07/12/18/58/dishwashing-detergent-154103_1280.png",
                  urunAd: "Bulaşık Deterjanı",
                  urunFiyat: "170 TL",
                  urunDetayAciklama:
                      "Yağ ve kirleri kolayca temizleyen bulaşık deterjanı ile parlak bulaşıklar elde edin.",
                  mevcut: true,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2020/08/22/11/41/bottles-5508212_1280.jpg",
                  urunAd: "Çamaşır suyu",
                  urunFiyat: "140 TL",
                  urunDetayAciklama:
                      "Güçlü formülü ile hijyenik temizlik sağlayan çamaşır suyunu keşfedin! Mikropları yok eder, yüzeyleri tertemiz yapar.",
                  mevcut: true,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2022/08/22/00/32/dishwashing-soap-7402399_1280.jpg",
                  urunAd: "B. Makine deterjanı",
                  urunFiyat: "200 TL",
                  urunDetayAciklama:
                      " Makinenize özel formülüyle mükemmel temizliği sağlayan deterjanlarla bulaşıklarınızı ışıl ışıl yapın.",
                  mevcut: true,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2017/09/05/00/53/micro-fiber-cloth-2716115_1280.jpg",
                  urunAd: "Temizlik Bezi",
                  urunFiyat: "120 TL",
                  urunDetayAciklama:
                      " Dayanıklı ve emici temizlik bezleriyle hijyeni kolaylaştırın! Toz, kir ve yağ lekelerine karşı etkili.",
                  mevcut: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
