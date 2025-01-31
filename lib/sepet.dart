import 'package:flutter/material.dart';

class Sepet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ekran ölçüleri
    var ekran = MediaQuery.of(context).size;
    double ekranYukseklik = ekran.height;
    double ekranGenislik = ekran.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Text(
              "Sepet",
              style: TextStyle(
                color: Colors.red,
                fontSize: ekranGenislik * 0.07,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          UrunEkle(
            ekranGenislik: ekranGenislik,
            urunAdi: "Çikolata",
            urunAdet: 2,
            urunFiyat: 40,
          ),
          UrunEkle(
            ekranGenislik: ekranGenislik,
            urunAdi: "Kek",
            urunAdet: 2,
            urunFiyat: 110,
          ),
          UrunEkle(
            ekranGenislik: ekranGenislik,
            urunAdi: "Su",
            urunAdet: 3,
            urunFiyat: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Toplam Tutar",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: ekranGenislik * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "330 TL",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: ekranGenislik * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: ekranGenislik * 0.5,
            height: ekranYukseklik * 0.07,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Satın Al"),
            ),
          ),
        ],
      ),
      /*
      !!ListTile kullanımdan vazgeçtim çünkü Buton genişliğini ayarlamama izin vermedi
        ListTile(
          title: Text(
            "Gofret",
            style: TextStyle(
              color: Colors.black,
              fontSize: ekranGenislik * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "2 x 15 TL",
            style: TextStyle(
              color: Colors.grey,
              fontSize: ekranGenislik * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            "30 TL",
            style: TextStyle(
              color: Colors.black,
              fontSize: ekranGenislik * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          title: Text(
            "Kek",
            style: TextStyle(
              color: Colors.black,
              fontSize: ekranGenislik * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "1 x 10 TL",
            style: TextStyle(
              color: Colors.grey,
              fontSize: ekranGenislik * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            "10 TL",
            style: TextStyle(
              color: Colors.black,
              fontSize: ekranGenislik * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          title: Text(
            "Meyve Suyu",
            style: TextStyle(
              color: Colors.black,
              fontSize: ekranGenislik * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "3 x 15 TL",
            style: TextStyle(
              color: Colors.grey,
              fontSize: ekranGenislik * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            "45 TL",
            style: TextStyle(
              color: Colors.black,
              fontSize: ekranGenislik * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        */
    );
  }
}

class UrunEkle extends StatelessWidget {
  UrunEkle({
    super.key,
    required this.ekranGenislik,
    required this.urunAdi,
    required this.urunAdet,
    required this.urunFiyat,
  });

  final double ekranGenislik;
  final String urunAdi;
  final int urunAdet;
  final int urunFiyat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${urunAdi}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: ekranGenislik * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "$urunAdet x $urunFiyat TL",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: ekranGenislik * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            "${urunAdet * urunFiyat} TL",
            style: TextStyle(
              color: Colors.black,
              fontSize: ekranGenislik * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
