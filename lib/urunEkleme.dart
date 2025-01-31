import 'package:flutter/material.dart';
import 'package:marketuygulama/urunDetay.dart';

class UrunEkleme extends StatefulWidget {
  late String urlAdres;
  late String urunAd;
  late String urunFiyat;
  late String urunDetayAciklama;
  late bool mevcut;

  UrunEkleme({
    super.key,
    required this.urlAdres,
    required this.urunAd,
    required this.urunFiyat,
    required this.urunDetayAciklama,
    required this.mevcut,
  });

  @override
  State<UrunEkleme> createState() => _UrunEklemeState();
}

class _UrunEklemeState extends State<UrunEkleme> {
  late String urunDetayYazi;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Urundetay(
                      //buradan diğer sınıfa bilgileri gönderdim
                      urlAdresi: widget.urlAdres,
                      urunAdi: widget.urunAd,
                      urundetay: widget.urunDetayAciklama,
                      mevcut: widget.mevcut,
                    );
                  },
                ),
              );
            });
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Column(
              children: [
                Hero(
                  tag: "${widget.urunAd}",
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.25,

                    //resime kenarlık yuvarlık eklemek için
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "${widget.urlAdres}",
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    /* düz kullanım yapmak için direk böyle ekle
                    child: Image.network(
                      "${widget.urlAdres}",
                      fit: BoxFit.cover,
                    ),
                    */
                  ),
                ),
                Text("${widget.urunAd}"),
                Text(
                  "${widget.urunFiyat}",
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
