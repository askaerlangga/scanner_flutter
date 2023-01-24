import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRCodeScanner extends StatelessWidget {
  QRCodeScanner({super.key});

  MobileScannerController cameraController = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scanner'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.flashlight_on))
        ],
      ),
      body: MobileScanner(
          allowDuplicates: false,
          onDetect: ((barcode, args) {
            if (barcode.rawValue == null) {
              debugPrint('Failed to scan Barcode');
            } else {
              final String code = barcode.rawValue!;
              debugPrint('Barcode found! $code');
            }
          })),
    );
  }
}
