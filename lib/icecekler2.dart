import 'package:flutter/material.dart';

class Icecekler2 extends StatefulWidget {
  const Icecekler2({super.key});

  @override
  State<Icecekler2> createState() => _Icecekler2State();
}

class _Icecekler2State extends State<Icecekler2> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //satırda kaç adet yan yana olacak
      crossAxisCount: 2,
      //elemanlar arasına yukarıdan aşağı boşluk
      mainAxisSpacing: 12,
      //elemanlar arasında yan yana olanlara boşluk
      crossAxisSpacing: 12,
      padding: EdgeInsets.all(20),
      //en-boy oranı 1 olsun eşit olsun
      childAspectRatio: 1,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.3,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2021/03/12/17/54/coca-cola-6090176_1280.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Text("Kola"),
              Text(
                "30 TL",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.3,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2021/03/12/17/54/coca-cola-6090176_1280.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Text("Kola"),
              Text(
                "30 TL",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
        Container(),
        Container(),
      ],
    );
  }
}
