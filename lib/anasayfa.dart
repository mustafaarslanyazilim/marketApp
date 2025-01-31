import 'package:flutter/material.dart';
import 'package:marketuygulama/sepet.dart';
import 'package:marketuygulama/urunler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  //poziyon numarasını tutacak değişken
  int pozisyonNo = 0;

  //içerik liste
  List _icerikler = [
    Urunler(),
    Sepet(),
  ];

  @override
  Widget build(BuildContext context) {
    //ekran ölçüleri
    var ekran = MediaQuery.of(context).size;
    double ekranYukseklik = ekran.height;
    double ekranGenislik = ekran.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Marketim App",
          style: TextStyle(
            fontSize: ekranGenislik * 0.07,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              UserAccountsDrawerHeader(
                //kullanıcı Hesap Çekmece Başlığı
                accountName: Text(
                  "Mustafa Arslan",
                  style: TextStyle(fontSize: ekranYukseklik * 0.02),
                ),
                accountEmail: Text(
                  "mustafaarslanyazilim@gmail.com",
                  style: TextStyle(fontSize: ekranYukseklik * 0.017),
                ),
                currentAccountPicture: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/mustafa.jpeg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.deepOrangeAccent),
                arrowColor: Colors.black,
                currentAccountPictureSize: Size(75, 75),
              ),
              ListTile(
                title: Text(
                  "Siparişlerim",
                  style: TextStyle(fontSize: ekranYukseklik * 0.02),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "İndirim Kuponları",
                  style: TextStyle(fontSize: ekranYukseklik * 0.02),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "Ayarlar",
                  style: TextStyle(fontSize: ekranYukseklik * 0.02),
                ),
                onTap: () {},
              ),
              ListTile(
                title: Text(
                  "Çıkış Yap",
                  style: TextStyle(fontSize: ekranYukseklik * 0.02),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: _icerikler[pozisyonNo],
      bottomNavigationBar: BottomNavigationBar(
        //geçerli index-butona tıklanınca aktif buton rengi değişecek
        currentIndex: pozisyonNo,
        //seçili buton rengi
        selectedItemColor: Colors.red,
        //seçili olmayan buton rengi
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
            label: "Ürünler",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Sepet",
            icon: Icon(Icons.shopping_cart),
          ),
        ],
        onTap: (value) {
          setState(() {
            pozisyonNo = value;
          });
          print(value);
        },
      ),
    );
  }
}
