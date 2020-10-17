import 'package:flutter/material.dart';
import './ContentPage.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() =>
      HomeState(); // ambil kelas homestate untuk  grid view
}

class HomeState extends State<Home> {
  List<String> names = [
    'bentuk-covid',
    'cuci-tangan-covid',
    'doktor-terawan',
    'gejala-covid',
    'gunakan-masker',
    'kemenkes-ri',
    'doktor-tirta',
    'wisma-atlet',
    'baju-protokol',
    'lokdon-kota'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Tentang Covid'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(names.length, (index) {
          return GridTile(
            child: GestureDetector(
              child: Container(
                margin: const EdgeInsets.all(5.0),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/' + names[index] + '.jpg'),
                )),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ContentPage(value: names[index]); // kirim data
                }));
              },
            ),
          );
        }),
      ),
    );
  }
}
