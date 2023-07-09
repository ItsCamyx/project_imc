import 'package:flutter/material.dart';

class IMCResult extends StatelessWidget {
  final double imc;

  const IMCResult({
    required this.imc,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Seu IMC: ${imc.toStringAsFixed(2)}',
      style: TextStyle(fontSize: 24),
    );
  }
}
