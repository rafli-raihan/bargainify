import 'package:flutter/material.dart';

    class HomeScreen extends StatelessWidget{
      const HomeScreen({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Bargainify / home"),
              actions: [
                IconButton(
                  onPressed: () {}, 
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black)
                    ),
                IconButton(
                  onPressed: () {}, 
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black)
                    ),
              ],
            ),
          );
      }
    }