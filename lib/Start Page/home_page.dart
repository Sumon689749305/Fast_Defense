
//import 'dart:html';

import 'package:fast_defense/Start%20Page/Start_page.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Nextstate();
}

class _Nextstate extends State<Home> {


  @override
  Widget build(BuildContext context) {
   ButtonStyle buttonStyle=ElevatedButton.styleFrom(
     minimumSize: Size(double.infinity, 40)
   );

    return Scaffold(

         backgroundColor: const Color.fromARGB(180, 66, 55, 255),

        body:
        Center(
          child:
            ElevatedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Start()));}, child: Text('FAST'),style: buttonStyle,),


        )

    );


  }
}
