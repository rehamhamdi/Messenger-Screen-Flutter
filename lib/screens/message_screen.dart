import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Message Screen",
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      ),
    );
  }
}
