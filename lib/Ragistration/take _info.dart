import 'package:fast_defense/privacy_policy.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? localStorage;
class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPagestate();

  static Future init() async {
    localStorage = await SharedPreferences.getInstance();

  }

}

class _NextPagestate extends State<NextPage> {


  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailaddressController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity, 30)
    );
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

                alignment: Alignment.centerLeft,
                width: 300,
                child:
                Text("What is your name?",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    color: Colors.white,

                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: firstnameController,
                      obscureText: false,

                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "First Name",
                        hintStyle: TextStyle(
                            fontSize: 15.0, color: Colors.white),
                        filled: true,
                        fillColor: Colors.transparent,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      controller: lastNameController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Last Name",
                        hintStyle: TextStyle(
                            fontSize: 15.0, color: Colors.white),
                        filled: true,
                        fillColor: Colors.transparent,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: emailaddressController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Email Address",
                  hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),
                  filled: true,
                  fillColor: Colors.transparent,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.all(20), child: ElevatedButton(

                onPressed: () {
                  saveUserInfo();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Privacy()));
                },
                child: Text('Submit'), style: buttonStyle,),)
            ],
          ),
        )
    );
  }

  Future<void> saveUserInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('firstName', firstnameController.text.toString());
    await prefs.setString('LastName', lastNameController.text.toString());
    await prefs.setString(
        'emailaddress', emailaddressController.text.toString());
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Privacy()),
    );
  }
}
  /*
  void login() async {
    if(firstnameController.text.isEmpty && lastNameController.text.isEmpty && emailaddressController.text.isEmpty)
      {
        var response = await http.post(Uri.parse("https://reqres.in/api/login"),
    body: (
    {
      "firstName" : emailaddressController.text,
    "LastName": lastNameController.text,
    "emailaddress":emailaddressController.text
    }
    ));
        if(response.statusCode==200){
          final body = jsonDecode(response.body);
          ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Token:${body['token']}")));
          SharedPreferences prof = await SharedPreferences.getInstance();
          await pref.setString("login",body['token']);
        }
        else{
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Invalid Credentials")));
        }
      }
    else{
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Invalid Credentials")));
    }
  }
}*/
