// main app widget

import 'package:flutter/material.dart';

class PrimeMarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PrimeMar',
      home: Scaffold(
        body: Center(child: Text('Welcome to PrimeMar')),
      ),
    );
  }
}
