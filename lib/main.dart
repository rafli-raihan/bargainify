    import 'package:flutter/material.dart';
    import 'screens/HomeScreen.dart';

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
            body:
             Flexible(
              child: 
               HomeScreen(),
            ),
          ),
        );
      }
    }

