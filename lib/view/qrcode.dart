import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeScreen extends StatelessWidget {
  final String? link;
  const QrCodeScreen({Key? key, @required this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          height: MediaQuery.of(context).size.height,
          child: QrImage(
              data: "https://cartaodevisitamg.web.app/#/cartaomg/$link",
              version: QrVersions.auto,
              size: MediaQuery.of(context).size.height),
        ),
      ),
    );
  }
}
