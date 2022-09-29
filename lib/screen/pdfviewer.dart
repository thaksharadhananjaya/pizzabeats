import 'package:flutter/material.dart';
import 'package:pizzabeats/config.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDF extends StatelessWidget {
  const PDF({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimeryColor1,
        body: SafeArea(
          
      child: SfPdfViewer.asset(
        'assets/pdf/pz.pdf',
      ),
    ));
  }
}
