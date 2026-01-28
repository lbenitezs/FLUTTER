import 'package:flutter/material.dart';
import 'package:gimnasio_calculadora/core/app_colors.dart';
import 'package:gimnasio_calculadora/screens/imc_home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( 
          backgroundColor:AppColors.primary, 
          title: Text("Imc Calculator")
          ),
        backgroundColor: AppColors.background,
        body: ImcHomeScreen(),
      ),
    );
  }
}
