import 'package:flutter/material.dart';

class Urundetay extends StatefulWidget {
  Urundetay({
    super.key,
    required this.urlAdresi,
    required this.urunAdi,
    required this.urundetay,
    required this.mevcut,
  });

  String urlAdresi;
  String urunAdi;
  String urundetay;
  bool mevcut;

  @override
  State<Urundetay> createState() => _UrundetayState();
}

class _UrundetayState extends State<Urundetay> {
  @override
  Widget build(BuildContext context) {
    double ekranYukseklik = MediaQuery.of(context).size.height;
    double ekranGenislik = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("${widget.urunAdi}"),
      ),
      body: Column(
        children: [
          Container(
            child: Hero(
              tag: "${widget.urunAdi}",
              child: Image.network("${widget.urlAdresi}"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.02,
              right: MediaQuery.of(context).size.height * 0.02,
              left: MediaQuery.of(context).size.height * 0.02,
            ),
            child: Text(
              "${widget.urundetay}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: ekranGenislik * 0.05,
                color: Colors.indigoAccent,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.02,
              right: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.height * 0.01,
            ),
            child: Container(
              width: ekranGenislik * 0.7,
              height: ekranYukseklik * 0.07,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  widget.mevcut ? "Sepete Ekle" : "Stokta Yok",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: widget.mevcut ? Colors.red : Colors.grey,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
