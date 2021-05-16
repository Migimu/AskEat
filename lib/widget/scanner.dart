import 'dart:io';

import 'package:ask_and_eat/global/globals.dart';
import 'package:ask_and_eat/pages/tab_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class EscanerQR extends StatefulWidget {
  EscanerQR({Key? key}) : super(key: key);

  @override
  _EscanerQRState createState() => _EscanerQRState();
}

class _EscanerQRState extends State<EscanerQR> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  late QRViewController controller;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.pauseCamera();
    } else if (Platform.isIOS) {
      controller.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          QRView(
            formatsAllowed: [],
            overlay: QrScannerOverlayShape(
                borderColor: Colors.red,
                borderRadius: 10,
                borderLength: 30,
                borderWidth: 10,
                cutOutSize: scanArea),
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
          ),
          Container(
              height: 50,
              color: Colors.grey.withOpacity(0.2),
              child: Center(
                child: (result != null)
                    ? Text(
                        'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}',
                        style: TextStyle(fontSize: 25),
                      )
                    : Text('Escanea una mesa',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
              )),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      print("Lo has conseguido");
      setState(() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TabPage()),
        );
        resultadoScanner = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
