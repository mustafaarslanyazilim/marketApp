import 'package:flutter/material.dart';
import 'package:marketuygulama/urunEkleme.dart';

class Temelgida extends StatefulWidget {
  const Temelgida({super.key});

  @override
  State<Temelgida> createState() => _TemelgidaState();
}

class _TemelgidaState extends State<Temelgida> {
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
                      "https://media.istockphoto.com/id/1206682746/tr/foto%C4%9Fraf/cam-bir-kaseye-s%C4%B1zma-zeytinya%C4%9F%C4%B1-d%C3%B6kmek.jpg?s=2048x2048&w=is&k=20&c=w1lm1fboqElLjK_i70X2XDTYC9JOo_Mt8bTRxNB7oqU=",
                  urunAd: "Zeytin Yağı",
                  urunFiyat: "300 TL",
                  urunDetayAciklama:
                      "En kaliteli zeytinlerden elde edilen doğal ve saf zeytinyağı, yemeklerinize lezzet ve sağlık katar. Soğuk sıkım ve katkısız içeriğiyle sofralarınıza doğallık getirir.",
                  mevcut: true,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2018/02/08/15/02/meat-3139641_640.jpg",
                  urunAd: "Et",
                  urunFiyat: "500 TL",
                  urunDetayAciklama:
                      "Taze ve hijyenik koşullarda hazırlanan et ürünleriyle lezzetli yemekler yapabilirsiniz. Güvenilir tedarikçilerden temin edilen yüksek kaliteli et çeşitleri burada!",
                  mevcut: false,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrunEkleme(
                  urlAdres:
                      "https://media.istockphoto.com/id/1474901155/tr/foto%C4%9Fraf/fresh-organic-chicken-eggs.jpg?s=2048x2048&w=is&k=20&c=YGgN13fkM1jZsFRN_iGf2YXiAwJEvDzjdegB4wzDXFI=",
                  urunAd: "Köy Yumurtası",
                  urunFiyat: "200 TL",
                  urunDetayAciklama:
                      "Doğal beslenen tavuklardan elde edilen köy yumurtası, kahvaltılarınızı ve tariflerinizi daha lezzetli hale getirir. Katkısız ve taze!",
                  mevcut: true,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2016/08/11/23/25/glass-1587258_1280.jpg",
                  urunAd: "Süt",
                  urunFiyat: "150 TL",
                  urunDetayAciklama:
                      "Doğal ve besleyici tam yağlı süt ile sağlıklı içecekler ve tatlılar hazırlayın. Günlük olarak üretilen taze sütümüzü hemen deneyin!",
                  mevcut: false,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                UrunEkleme(
                  urlAdres:
                      "https://media.istockphoto.com/id/960872064/tr/foto%C4%9Fraf/yunan-beyaz-peynir-blok.jpg?s=2048x2048&w=is&k=20&c=41pCRumEo9djWAaaTBCJCpUQUAUqwHARj448syR-VYY=",
                  urunAd: "Beyaz Peynir",
                  urunFiyat: "250 TL",
                  urunDetayAciklama:
                      "Kahvaltılarınızın vazgeçilmezi! Doğal sütle üretilmiş, lezzetli ve besleyici beyaz peynir ile sofralarınızı zenginleştirin.",
                  mevcut: true,
                ),
                UrunEkleme(
                  urlAdres:
                      "https://cdn.pixabay.com/photo/2021/06/30/20/31/cheese-6377662_1280.jpg",
                  urunAd: "Kaşar Peynir",
                  urunFiyat: "270 TL",
                  urunDetayAciklama:
                      "Sandviçlerden makarnalara kadar birçok tarifte kullanabileceğiniz, tam kıvamında ve lezzetli kaşar peynirini keşfedin!",
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
