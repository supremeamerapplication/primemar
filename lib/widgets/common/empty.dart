import 'package:flutter/material.dart';

class Empty extends StatelessWidget {
  final String message;

  const Empty({this.message = 'Nothing to show', Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message));
  }
}
