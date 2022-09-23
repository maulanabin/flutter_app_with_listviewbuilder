import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> imgPlayerPique = [
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
    "assets/images/img4.jpg",
    "assets/images/img5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp - Maulana Bintang Irfansyah'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'BERITA TERBARU',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  'PERTANDINGAN HARI INI',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 12),
            color: Colors.purpleAccent,
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/img1.jpg',
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Costa Mendekat ke Palmeiras',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(14),
                  width: double.infinity,
                  child: Text('Transfer'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: imgPlayerPique.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 8),
                  padding: EdgeInsets.all(1),
                  color: Colors.green,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            child: Image.asset(
                              imgPlayerPique[index],
                              fit: BoxFit.contain,
                              height: 115,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            margin: EdgeInsets.all(1),
                            color: Colors.white,
                            height: 115,
                            width: 271,
                            alignment: Alignment.centerLeft,
                            child: Text(
                                'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
