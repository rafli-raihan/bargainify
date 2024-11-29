    import 'package:flutter/material.dart';
    // ignore: unused_import
    import 'screens/HomeScreen.dart';
    import 'screens/%5Bid%5D/ProductScreen.dart';
     
    void main() {
     runApp(MainView());
    }
     
    class MainView extends StatelessWidget{
      const MainView({super.key});

      @override
      Widget build(BuildContext context){
        return MaterialApp(
          theme: ThemeData(useMaterial3: true),
          title: "firstApp",
          home: Scaffold(
            appBar: AppBar(
              title: Text(
                "Bargainify"),
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
            body: ProductScreen(),
          ),
        );
      }
    }

