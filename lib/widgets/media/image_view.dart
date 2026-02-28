import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  final String url;

  const ImageView({required this.url, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Image.network(url);
}
