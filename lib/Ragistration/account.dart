import 'package:fast_defense/Ragistration/otppage.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Home Page/pickup_point.dart';

SharedPreferences? localStorage;
class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _Accountstate();
}

class _Accountstate extends State<Account> {
  TextEditingController numberController = TextEditingController();
  var newUserNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration Page'),
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
              width: 349,
              child:
              Text("Enter Your Phone Number",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                  color: Colors.white,

                ),
              ),
            ),
            SizedBox(height: 10,),
            IntlPhoneField(
              controller: numberController,
              dropdownTextStyle: TextStyle(color: Colors.white),

              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(

                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),

                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              initialCountryCode: 'BD',
              onChanged: (phone) {
                print(phone.completeNumber);
              },
            ),

            SizedBox(height: 300,),
            Text(
              "By continuing you may receive an SMS for verification. Message and data rates may apply",
              style: TextStyle(color: Colors.white),),
            SizedBox(height: 5,),
            ElevatedButton(onPressed: () {
              saveNumver();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => OTPPage()));
            }, child: Text("Next"))
          ],
        ),
      ),);
  }

  Future<void> saveNumver() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    newUserNumber =
    await prefs.setString('number', numberController.text.toString());

    if (newUserNumber == null) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OTPPage()),
      );
    }
    else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Pickup()),
      );
    }
  }
}
