import 'package:flutter/material.dart';
import 'package:marketuygulama/urunEkleme.dart';

class Icecekler extends StatefulWidget {
  const Icecekler({super.key});

  @override
  State<Icecekler> createState() => _IceceklerState();
}

class _IceceklerState extends State<Icecekler> {
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
                      "https://cdn.pixabay.com/photo/2021/03/12/17/54/coca-cola-6090176_1280.jpg",
                  urunAd: "Kola",
                  urunFiyat: "30 TL",
                  urunDetayAciklama:
                      "Ferahlatıcı ve gazlı içeceğin en sevilen hali! Soğuk tüketerek serinleyin.",
                  mevcut: false,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2021/09/15/12/49/can-6626782_1280.jpg",
                  urunAd: "Fanta",
                  urunFiyat: "30 TL",
                  urunDetayAciklama:
                      "Meyve aromalı gazlı içecekle eğlenceli ve lezzetli anlar yaşayın! Buz gibi Fanta ile ferahlayın.",
                  mevcut: false,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2016/10/01/19/59/jump-vintage-soda-bottle-1708219_1280.jpg",
                  urunAd: "Soda",
                  urunFiyat: "15 TL",
                  urunDetayAciklama:
                      "Maden suyu ile doğal mineralleri keşfedin! Sindirimi kolaylaştıran ve ferahlatan bir içecek.",
                  mevcut: false,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2020/08/19/17/48/water-5501652_1280.jpg",
                  urunAd: "Su",
                  urunFiyat: "10 TL",
                  urunDetayAciklama:
                      "Günlük su ihtiyacınızı karşılayacak taze ve doğal kaynak suyu! Sağlıklı yaşam için yeterli su tüketmeyi unutmayın.",
                  mevcut: false,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2016/11/29/13/09/cappuccino-1869731_1280.jpg",
                  urunAd: "Cappuccino",
                  urunFiyat: "170 TL",
                  urunDetayAciklama:
                      "Köpüklü ve aromatik cappuccino ile kahve keyfinizi en üst seviyeye taşıyın. Yoğun kahve lezzeti bir tık uzağınızda!",
                  mevcut: true,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2021/09/06/01/13/coffee-6600644_1280.jpg",
                  urunAd: "Kahve",
                  urunFiyat: "150 TL",
                  urunDetayAciklama:
                      "Taze çekilmiş kahve çekirdekleriyle hazırlanan kahvemizle gününüze enerji katın! Filtre kahve, espresso ve Türk kahvesi seçenekleriyle.",
                  mevcut: true,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2019/10/05/07/01/cocoa-4527164_1280.jpg",
                  urunAd: "Sıcak Çikolata",
                  urunFiyat: "130 TL",
                  urunDetayAciklama:
                      "Yoğun kakao lezzetiyle sıcak çikolata keyfini çıkarın. Soğuk günlerde içinizi ısıtacak lezzet!",
                  mevcut: true,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2016/10/14/18/21/tee-1740871_1280.jpg",
                  urunAd: "Bitki Çayı",
                  urunFiyat: "120 TL",
                  urunDetayAciklama:
                      "Doğal bitkilerden elde edilen çaylarımızla rahatlayın. Nane, papatya, yeşil çay ve daha fazlasını keşfedin!",
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
