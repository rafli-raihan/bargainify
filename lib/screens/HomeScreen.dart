import 'package:flutter/material.dart';

    class HomeScreen extends StatelessWidget{
      const HomeScreen({super.key});

      @override
      Widget build(BuildContext context) {
          return Scaffold(
            body: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10), // Kalo mw padding semua sisinya disamaian EdgeInset.all(jumlah nya)
              child: Column (
                children: const <Widget>[
                  Text(
                    'Selamat Datang!',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Temukan barang yang anda inginkan dengan harga yang fantastis",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  // Kalo mw nambah widget lagi disini
                ]),
              ),
          );
      }
    }