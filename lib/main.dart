import 'package:flutter/material.dart';
import 'package:fmarket/sepetim.dart';
import 'package:fmarket/urunler.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  late int _aktifIcerikNo = 0;
  late List<Widget> _icerikler;
  @override

  // ignore: must_call_super
  void initState() {
    super.initState();
    _icerikler = [Urunler(), Sepetim()];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.purple.shade400),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Getir Götür",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ),
      body: _icerikler[_aktifIcerikNo],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Suna Ayhan"),
                currentAccountPicture: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://media-exp1.licdn.com/dms/image/C4D03AQGLvsaA03QzMA/profile-displayphoto-shrink_800_800/0/1622934690701?e=1628726400&v=beta&t=KXf8JQp7GEsJJmIoPZ1XSqDipHpKofZ_Pdg6eJEwiYc"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(50)),
                ),
                decoration: BoxDecoration(color: Colors.purple),
                accountEmail: Text("sunaayhan16@gmail.com")),
            ListTile(
              title: Text("Siparişlerim"),
              onTap: () {},
            ),
            ListTile(
              title: Text("İndirimlerim"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Ayarlar"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Çıkış Yap"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktifIcerikNo,
        selectedItemColor: Colors.purple.shade600,
        unselectedItemColor: Colors.purple.shade200,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ("Ürünler")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: ("Sepetim")),
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
            _aktifIcerikNo = tiklananButonPozisyonNo;
          });
        },
      ),
    );
  }
}
