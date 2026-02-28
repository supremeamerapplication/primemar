import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSend;

  const ChatInput({required this.controller, required this.onSend, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: TextField(controller: controller)),
        IconButton(icon: Icon(Icons.send), onPressed: onSend),
      ],
    );
  }
}
