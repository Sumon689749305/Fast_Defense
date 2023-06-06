import 'package:flutter/material.dart';


class Your_trips extends StatefulWidget {
  const Your_trips({super.key});

  @override
  State<Your_trips> createState() => _Your_tripsstate();
}

class _Your_tripsstate extends State<Your_trips> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Trips'),
      ),
    );
  }
}