import 'package:flutter/material.dart';
import 'package:new_project/screens/home_screen.dart';

void main() {
  runApp(MedidorIMCApp());
}

class MedidorIMCApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medidor de IMC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
