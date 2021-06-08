import 'package:flutter/material.dart';
import 'package:fmarket/kategori.dart';

class Urunler extends StatefulWidget {
  const Urunler({Key? key}) : super(key: key);

  @override
  _UrunlerState createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin {
  late TabController televizyonKontrolcusu;
  void initState() {
    super.initState();
    televizyonKontrolcusu = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            controller: televizyonKontrolcusu,
            indicatorColor: Colors.purple.shade400,
            labelColor: Colors.purple.shade400,
            unselectedLabelColor: Colors.purple.shade100,
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                  "Temel Gıda",
                ),
              ),
              Tab(
                child: Text("Şekerleme"),
              ),
              Tab(
                child: Text("İçecekler"),
              ),
              Tab(
                child: Text("Temizlik"),
              ),
            ]),
        Expanded(
            child: TabBarView(controller: televizyonKontrolcusu, children: [
          Kategori(
            kategori: "Temel Gıda",
          ),
          Kategori(
            kategori: "Şekerleme",
          ),
          Kategori(
            kategori: "İçecekler",
          ),
          Kategori(
            kategori: "Temizlik",
          )
        ]))
      ],
    );
  }
}
