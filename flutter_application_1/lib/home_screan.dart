import 'package:flutter/material.dart';

class HomeScrean extends StatelessWidget {
  final String imagName;
  final String text;
  const HomeScrean({super.key, required this.imagName, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.asset(
            "assets/images/$imagName.jpg",
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.only(right: 8, left: 8, bottom: 8),
          padding: EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: Color(0xFF024383),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
