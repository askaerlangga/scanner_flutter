import 'package:flutter/material.dart';

class QRCodeGenerator extends StatelessWidget {
  const QRCodeGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generator'),
        centerTitle: true,
      ),
      body: ListView(children: []),
    );
  }
}
