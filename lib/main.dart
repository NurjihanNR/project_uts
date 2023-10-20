import 'package:flutter/material.dart';
import 'package:flutterbookapp/constants/color_constant.dart';
import 'package:flutterbookapp/screens/home_screen.dart';

// Fungsi ini mengonversi warna menjadi MaterialColor
MaterialColor createMaterialColor(Color color) {
  List<int> strengths = <int>[50, 100, 200, 300, 400, 500, 600, 700, 800, 900];
  Map<int, Color> swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int strength in strengths) {
    final double t = 0.5 - ((strength - 500).abs() / 1000);
    swatch[strength] = Color.fromRGBO(
      r + ((t * (500 - r)).round()),
      g + ((t * (500 - g)).round()),
      b + ((t * (500 - b)).round()),
      1,
    );
  }

  return MaterialColor(color.value, swatch);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Menggunakan fungsi createMaterialColor untuk mengonversi warna ke MaterialColor
    MaterialColor primarySwatch = createMaterialColor(kMainColor);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primarySwatch, // Menggunakan primarySwatch dengan warna yang telah diubah
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: HomeScreen(),
      routes: {
        "/homeScreen": (_) => HomeScreen(),
      },
    );
  }
}
