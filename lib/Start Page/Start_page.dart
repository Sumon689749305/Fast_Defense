import 'package:fast_defense/Ragistration/account.dart';

import 'package:flutter/material.dart';


class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _Startstate();
}

class _Startstate extends State<Start> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("New"),),
        backgroundColor: const Color.fromARGB(180, 66, 55, 255),
        body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Container
          (
          height: 200,
          width: 200,
          alignment: Alignment.center,
          padding: EdgeInsets.all(60),
          child: Text("FAST",
            style: TextStyle(fontSize: 25),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.blue,width: 10),

      ),

            ),
          Align(
            alignment: Alignment.topCenter,
            child:
              ElevatedButton(
              onPressed:
                  (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> Account()));},
                  child: Text('GET START')),

          )
        ],
      ),
      ),
    );
  }

}