import 'package:fast_defense/Home%20Page/pickup_point.dart';
import 'package:flutter/material.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _Privacystate();
}

class _Privacystate extends State<Privacy> {

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle=ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity,30)
    );
    return Scaffold(
        appBar: AppBar(
        title: Text('Privacy Policy'),
          backgroundColor: Colors.black,
        ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'By tapping the arrow below, you agree to Fast’s Terms of Use and acknowledge that you have read the Privacy Policy',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Fusce eleifend ligula id mauris tincidunt, a pulvinar libero consectetur. '
                  'Vivamus id nisl vestibulum, fringilla nulla at, viverra elit. '
                  'Morbi non mauris at mauris lacinia finibus.',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0),
            ),
            SizedBox(height: 40.0),
            ElevatedButton(
              onPressed: () {
                 Navigator.push(context,
                     MaterialPageRoute(builder: (context)=> Pickup()));},
              child: Text('Continue'),style: buttonStyle,
            ),
          ],
        ),
      ),
    );

    }
}