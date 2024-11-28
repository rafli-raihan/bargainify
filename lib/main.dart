    import 'package:flutter/material.dart';
    import 'screens/HomeScreen.dart';
     
    void main() {
     runApp(MainView());
    }
     
    class MainView extends StatelessWidget{
      const MainView({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context){
        return const MaterialApp(
          title: "firstApp",
          home: HomeScreen(),
        );
      }
    }

