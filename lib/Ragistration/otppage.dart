import 'package:fast_defense/Ragistration/take%20_info.dart';
import 'package:flutter/material.dart';


class OTPPage extends StatefulWidget {
  @override
  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  // 4 text editing controllers that associate with the 4 input fields
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  // This is the entered code
  // It will be displayed in a Text widget
  String? _otp;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
    body:

    Center(

    child: Column(

    children: [
    SizedBox(height: 10,),
    Container(

    alignment: Alignment.center,
    width:300,
    child:
    Text("Enter the 4-digit code sent to you at ",
    style: TextStyle(
    fontSize: 30 ,
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    color: Colors.white,

    ),
    ),
    ),
      SizedBox(height: 10,),
      Container(
        alignment: Alignment.topLeft,
        width:300,
        child:
        Text("+88 01822-852181",
          style: TextStyle(
            fontSize: 30 ,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      // Implement 4 input fields
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OtpInput(_fieldOne, true), // auto focus
          OtpInput(_fieldTwo, false),
          OtpInput(_fieldThree, false),
          OtpInput(_fieldFour, false)
        ],
      ),
      const SizedBox(
        height: 30,
      ),
      SizedBox(height: 150,),
      ElevatedButton(
          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> NextPage()));

          },
          child: const Text('Next')),
      const SizedBox(
        height: 30,
      ),
      // Display the entered OTP code
      Text(
        _otp ?? 'Please enter OTP',
        style: TextStyle(
          fontSize: 30 ,
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),

      )
      ],
    ),
    ),
    );
  }
}
class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        style: TextStyle(color: Colors.white),
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}