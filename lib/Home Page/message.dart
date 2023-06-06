import 'package:flutter/material.dart';


class message extends StatefulWidget {
  const message({super.key});

  @override
  State<message> createState() => _messagestate();
}

class _messagestate extends State<message> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message'),
      ),
    );
  }
}