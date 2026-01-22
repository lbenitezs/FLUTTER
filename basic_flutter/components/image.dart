import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network("https://docs.flutter.dev/assets/images/dash/dash-fainting.gif"),//URL
        Image.asset("assets/images/dash.jpeg", height: 100,fit:BoxFit.fill) //desde proyecto
      ],
    );
  }
}