import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  const Sepetim({Key? key}) : super(key: key);

  get children => null;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Center(
        child: Text(
          "Sepetim İçeriği",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.purple.shade400,
          ),
        ),
      ),
      ListTile(
        title: Text("Çikolatalı Gofret"),
        subtitle: Text("2 Adet x 3.5 TL"),
        trailing: Text("7 TL"),
      ),
      ListTile(
        title: Text("Meyve Suyu"),
        subtitle: Text("2 Adet x 3.5 TL"),
        trailing: Text("7 TL"),
      ),
      ListTile(
        title: Text("Islak Kek"),
        subtitle: Text("2 Adet x 3.5 TL"),
        trailing: Text("7 TL"),
      ),
      SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Column(
              children: [
                Text(
                  "21 TL",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "Toplam Tutar",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple.shade400,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.purple.shade400),
          child: Center(
            child: Text(
              "Alışverişi Tamamla",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      )
    ]);
  }
}
