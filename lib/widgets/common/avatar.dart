import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String url;
  final double size;

  const Avatar({required this.url, this.size = 40, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundImage: NetworkImage(url), radius: size / 2);
  }
}
