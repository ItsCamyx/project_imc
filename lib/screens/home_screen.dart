import 'package:flutter/material.dart';

import '../widget/calcular_button.dart';
import '../widget/imc_result.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController alturaController = TextEditingController();
  TextEditingController pesoController = TextEditingController();
  double imc = 0;

  void calcularIMC() {
    double altura = double.tryParse(alturaController.text) ?? 0;
    double peso = double.tryParse(pesoController.text) ?? 0;

    if (altura > 0 && peso > 0) {
      setState(() {
        imc = peso / (altura * altura);
      });
    }
  }

  @override
  void dispose() {
    alturaController.dispose();
    pesoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medidor de IMC'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: alturaController,
              decoration: InputDecoration(
                labelText: 'Informe sua altura (em metros):',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            TextField(
              controller: pesoController,
              decoration: InputDecoration(
                labelText: 'Informe seu peso (em quilogramas):',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16),
            CalcularButton(
              onPressed: calcularIMC,
              label: 'Calcular',
            ),
            SizedBox(height: 16),
            IMCResult(imc: imc),
          ],
        ),
      ),
    );
  }
}
