import 'package:flutter/material.dart';
import 'package:marketuygulama/bakliyat.dart';
import 'package:marketuygulama/hazirgida.dart';
import 'package:marketuygulama/icecekler.dart';
import 'package:marketuygulama/icecekler2.dart';
import 'package:marketuygulama/meyveler.dart';
import 'package:marketuygulama/temelGida.dart';
import 'package:marketuygulama/temizlik.dart';

class Urunler extends StatefulWidget {
  const Urunler({super.key});

  @override
  State<Urunler> createState() => _UrunlerState();
}

//SingleTickerProviderStateMixin --> ekranı hızlı yenilemek için kullanılır
//TabBarView'ın animasyon kaymaları için
class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin {
  late TabController tbCntroller;

  @override
  void initState() {
    super.initState();
    //this--> State sınıfının kendisini ifade eder
    //animasyonu State sınıfı yapacak
    tbCntroller = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //Sekme değiştirmek için-TabBar
        TabBar(
          //sekme altında duran çubuk-seçili sayfa çubuğu
          indicatorColor: Colors.lightBlue,
          labelColor: Colors.black,
          //sekme yazısı altında duran divider
          dividerColor: Colors.amber,
          dividerHeight: 5,
          //seçili olmayan sekme renk
          unselectedLabelColor: Colors.grey,
          //sekmeler yatay eksende kayabilir
          isScrollable: true,
          controller: tbCntroller,
          tabs: [
            Tab(
              child: Text("Temel Gıda"),
            ),
            Tab(
              child: Text("Bakliyat"),
            ),
            Tab(
              child: Text("Meyveler"),
            ),
            Tab(
              child: Text("İçecekler"),
            ),
            Tab(
              child: Text("Hazır Gıda"),
            ),
            Tab(
              child: Text("Temizlik Malzemeleri"),
            ),
          ],
        ),
        Expanded(
          //ana eksende tüm alanı kaplar-expended sayesinde
          //tabbarView'ın sınırlı alanlar içinde olması gerekli
          //tabBarView kaydırılabilir widget
          child: TabBarView(
            controller: tbCntroller,
            children: [
              Temelgida(),
              Bakliyat(),
              Meyveler(),
              Icecekler(),
              Hazirgida(),
              Temizlik(),
            ],
          ),
        ),
      ],
    ));
  }
}
