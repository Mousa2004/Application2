import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_screan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List info = [
      {"name": "Sharm El Shikh", "pass": "sharm"},
      {"name": "Alexandria", "pass": "alex"},
      {"name": "Dahab", "pass": "dahab"},
      {"name": "Marasy", "pass": "marasy"},
      {"name": "Nile", "pass": "nile"},
      {"name": "Aswan", "pass": "aswan"},
      {"name": "Delta", "pass": "delta"},
      {"name": "Matrouh", "pass": "matrouh"},
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFF024383),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Available Hotels",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Expanded(
                  child: GridView.builder(
                    itemCount: info.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 10,
                      childAspectRatio: 192 / 231,
                    ),
                    itemBuilder: (context, i) {
                      return HomeScrean(
                        imagName: info[i]['pass'],
                        text: info[i]['name'],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
