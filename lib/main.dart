import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'screens/HomeScreen.dart';

void main() {
  runApp(MainView());
}

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
        ColorScheme lightColorScheme;
        ColorScheme darkColorScheme;

        if (lightDynamic != null && darkDynamic != null) {
          lightColorScheme = lightDynamic;
          darkColorScheme = darkDynamic;
        } else {
          lightColorScheme = ColorScheme.fromSwatch();
          darkColorScheme = ColorScheme.fromSwatch(brightness: Brightness.dark);
        }

        return MaterialApp(
          theme: ThemeData(colorScheme: lightColorScheme, useMaterial3: true),
          darkTheme: ThemeData(colorScheme: darkColorScheme, useMaterial3: true),
          title: "firstApp",
          home: Scaffold(
            appBar: AppBar(
              title: Text("Bargainify"),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                ),
              ],
            ),
            body: HomeScreen(),
          ),
        );
      },
    );
  }
}