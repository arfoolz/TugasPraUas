import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  Map<String, String> names = {
    'bentuk-covid': 'Bentuk Covid',
    'cuci-tangan-covid': 'Cara Mencegah Covid',
    'doktor-terawan': "Pemimpin Devisi Kesehatan",
    'gejala-covid': 'Tanda Tertular Virus Covid',
    'gunakan-masker': 'Gunakanlah Masker',
    'kemenkes-ri': 'Adalah Satuan Medis Dari Pemerintah',
    'doktor-tirta': 'Dokter Nyentrik yang ikut relawan covid',
    'wisma-atlet': 'Rumah Sakit Wisma Atlet',
    'baju-protokol': 'Baju Protokol',
    'lokdon-kota': 'Upaya Pencegahan'
  };

  Map<String, String> desc = {
    'bentuk-covid':
        '''Bentuk Covid Menurut Medis adalah seperti ini, merupakan virus yang bertipe droplet artinya virus yang tidak mengambang di udara melain kan langsung jatuh ke tanah.''',
    'cuci-tangan-covid':
        '''Dengan Mencuci tangan kita bisa membantu menghalau penyebaran covid ini karna faktanya sabun dapat melawan virus covid 19 ini ''',
    'doktor-terawan':
        '''Merupakan kepala divisi kementrian kesehatan / medis yang bekerja di bawah pemerintahan jokowi dodo ''',
    'gejala-covid':
        ''' Salah satu gejala yang akan terjadi adalah seperti gambar''',
    'gunakan-masker':
        '''Masker adalah alat yang membantu melingdung dari paparan virus dari orang lain ''',
    'kemenkes-ri': ''' Merupakan Satuan Medis dari Pemerintahan Indonesia''',
    'doktor-tirta':
        '''Merupakan Dokter Nyentrik karena cara berpenampilannya yang berbeda dari kebanyakan dokter ''',
    'wisma-atlet': '''Tempat Penampungan covid yang disediakan pemerintah''',
    'baju-protokol': ''' Ini adalah salah satu contoh baju protokol covid ''',
    'lokdon-kota':
        ''' Karena adanya pandemik ini maka banyak kota besar ditutup paksa demi kebaikan bersama '''
  };

  final String value;
  // konstruktor
  ContentPage({Key key, @required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Covid'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.file_download),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/${this.value}.jpg',
              fit: BoxFit.fill,
            ),
            Container(
              height: 15.0,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 15.0,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(names[this.value],
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold)),
                      Text(
                        'Tangerang, Banten',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                      ),
                    ]),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                desc[this.value],
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.justify,
                softWrap: true,
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
