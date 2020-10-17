import 'package:flutter/material.dart';
import './Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aplikasi Informasi Covid',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home() //ambil kelas home
        );
  }
}
