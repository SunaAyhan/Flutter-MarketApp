import 'package:flutter/material.dart';
import 'package:fmarket/urun_detay.dart';

class Kategori extends StatefulWidget {
  final String kategori;
  const Kategori({Key? key, required this.kategori}) : super(key: key);

  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  late List<Widget> gosterilecekListe;
  @override
  void initState() {
    super.initState();
    if (widget.kategori == "Temel Gıda") {
      gosterilecekListe = [
        urunKarti(
          "Zeytinyağı",
          "23.40 TL",
          "https://cdn.pixabay.com/photo/2019/08/13/11/37/extra-virgin-olive-oil-4403217_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Süt",
          "3.50 TL",
          "https://cdn.pixabay.com/photo/2016/12/06/18/27/milk-1887237_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Kahve",
          "20 TL",
          "https://cdn.pixabay.com/photo/2016/01/02/04/59/coffee-1117933_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Şeker",
          "35.0 TL",
          "https://cdn.pixabay.com/photo/2016/05/17/14/22/strawberry-1398159_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Un",
          "50 TL",
          "https://cdn.pixabay.com/photo/2015/01/14/19/20/bake-599521_960_720.jpg",
          mevcut: true,
        ),
        urunKarti(
          "Makarna",
          "5 TL",
          "https://cdn.pixabay.com/photo/2016/11/23/18/31/pasta-1854245_960_720.jpg",
          mevcut: false,
        ),
      ];
    } else if (widget.kategori == "Şekerleme") {
      gosterilecekListe = [
        urunKarti(
          "Çikolata",
          "20 TL",
          "https://cdn.pixabay.com/photo/2020/12/13/13/30/cinnamon-sticks-5828241_960_720.jpg",
          mevcut: false,
        ),
        // urunKarti(
        //   "Pasta",
        //   "35.0 TL",
        //   "https://cdn.pixabay.com/photo/2016/11/22/18/52/cake-1850011_960_720.jpg",
        // ),
        // urunKarti(
        //   "Şeker",
        //   "50 TL",
        //   "https://cdn.pixabay.com/photo/2019/03/30/06/53/candy-4090697_960_720.jpgg",
        // ),
        urunKarti(
          "Bonibon",
          "5 TL",
          "https://cdn.pixabay.com/photo/2012/06/27/15/02/candy-50838_960_720.jpg",
          mevcut: false,
        ),
      ];
    } else if (widget.kategori == "İçecekler") {
      gosterilecekListe = [
        urunKarti(
          "Limonata",
          "20 TL",
          "https://cdn.pixabay.com/photo/2018/05/17/15/33/cocktail-3408834_960_720.jpg",
          mevcut: false,
        ),
        urunKarti(
          "Kola",
          "35.0 TL",
          "https://cdn.pixabay.com/photo/2014/09/26/19/51/drink-462776_960_720.jpg",
          mevcut: false,
        ),
        urunKarti(
          "Soğuk Kahve",
          "50 TL",
          "https://cdn.pixabay.com/photo/2017/09/03/15/45/iced-coffee-2710818_960_720.jpg",
          mevcut: false,
        ),
        urunKarti(
          "Çay",
          "5 TL",
          "https://cdn.pixabay.com/photo/2015/07/02/20/37/cup-829527_960_720.jpg",
          mevcut: false,
        ),
      ];
    } else if (widget.kategori == "Temizlik") {
      gosterilecekListe = [
        urunKarti(
          "Sabun",
          "5 TL",
          "https://cdn.pixabay.com/photo/2016/02/19/10/40/soaps-1209344_960_720.jpg",
        ),
        urunKarti(
          "Detarjan",
          "5 TL",
          "https://cdn.pixabay.com/photo/2019/02/05/18/55/cleaning-3977589_960_720.jpg",
          mevcut: false,
        ),
        urunKarti(
          "Şampuan",
          "5 TL",
          "https://cdn.pixabay.com/photo/2020/04/15/11/36/shampoo-5046291_960_720.jpg",
        ),
        urunKarti(
          "Duş Jeli",
          "5 TL",
          "https://cdn.pixabay.com/photo/2013/04/25/11/17/cosmetics-106982_960_720.jpg",
          mevcut: false,
        ),
      ];
    }
  }

  Widget urunKarti(String isim, String fiyat, String resimYolu,
      {bool mevcut = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => UrunDetay(
                      fiyat: fiyat,
                      isim: isim,
                      resimYolu: resimYolu,
                      mevcut: mevcut,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 4.0,
                  spreadRadius: 2.0)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: resimYolu,
              child: Container(
                width: 120,
                height: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(resimYolu),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              isim,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              fiyat,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.purple.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      padding: EdgeInsets.all(10),
      childAspectRatio: 1,
      children: gosterilecekListe,
    );
  }
}
