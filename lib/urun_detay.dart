import 'package:flutter/material.dart';

class UrunDetay extends StatelessWidget {
  final String fiyat;
  final String isim;
  final String resimYolu;
  final bool mevcut;

  const UrunDetay(
      {Key? key,
      required this.fiyat,
      required this.isim,
      required this.resimYolu,
      required this.mevcut})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Hero(tag: resimYolu, child: Image.network(resimYolu)),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.purple.shade400,
                  size: 40,
                ))
          ],
        ),
        Column(children: [
          SizedBox(
            height: 20,
          ),
          Text(
            isim,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            fiyat,
            style: TextStyle(
              color: Colors.purple.shade400,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Ürün açıklaması yazılacaktır",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 50,
            height: 50,
            decoration: BoxDecoration(
              color: mevcut ? Colors.purple.shade400 : Colors.black,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Center(
              child: Text(
                mevcut ? "Sepete Ekle " : " Ürün Stokta Yok",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ])
      ],
    ));
  }
}
