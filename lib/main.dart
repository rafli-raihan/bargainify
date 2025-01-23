import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'screens/HomeScreen.dart';

void main() {
  runApp(MainView());
}

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  bool _showSearch = false;

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
          title: "bargainify",
          home: Scaffold(
            appBar: AppBar(
              title: _showSearch
                  ? TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        hintText: 'Search belum di implementasi, hanya demo untuk show/hide searchbar saja :)',
                        border: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(25)),
                        ),
                        hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
                      ),
                      style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
                      onSubmitted: (value) {
                        setState(() {
                          _showSearch = false;
                        });
                      },
                    )
                  : Text("Bargainify"),
              actions: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      _showSearch = !_showSearch;
                    });
                  },
                  icon: Icon(_showSearch ? Icons.close : Icons.search),
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