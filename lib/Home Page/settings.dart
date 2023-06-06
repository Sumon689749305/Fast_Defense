import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _Settingsstate();
}

class _Settingsstate extends State<Settings> {
  String? firstName;
  String? LastName;
  String? emailaddress;
  String? number;
  var fullName;

  @override
  void initState() {
    super.initState();
    loadUserInfo();
    //Name();
  }
  Future<void> loadUserInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      firstName = prefs.getString('firstName');
      LastName = prefs.getString('LastName');
      emailaddress = prefs.getString('emailaddress');
      number = prefs.getString('number');
      fullName = firstName! + LastName!;
    });
  }
 /* String Name(){
    fullName = (firstName!+ LastName!);
    return fullName;
}*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Setting'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body:
      SingleChildScrollView(

        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(

            children:
            [
              Container(
               width: 120,
               height: 120,
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(100),child: Image.network('https://static.toiimg.com/thumb/msid-68124570,imgsize-229073,width-400,resizemode-4/68124570.jpg',

                 fit:BoxFit.cover,
               )),
              ),
                SizedBox(height: 10.0,),
                Text( fullName!,

                    style: TextStyle(color:Colors.white,fontSize: 30)),
              Text(number??'',style: TextStyle(color:Colors.white,fontSize: 20)),
                Text(emailaddress??'',style: TextStyle(color:Colors.white,fontSize: 20)),
              SizedBox(height: 10.0,),
              ElevatedButton(onPressed: (){}, child: Text("Edit Account")),
              SizedBox(height: 20,),
              ListTile(
                leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: const Icon(Icons.home,color: Colors.black,),
              ),
                title: Text("Add Home",style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.work,color: Colors.black,),
                ),
                title: Text("Add Work",style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.privacy_tip,color: Colors.black,),
                ),
                title: Text("Privacy",style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),),
              ),
              Text("Manage the data you share with us",
                style: TextStyle(
                  fontSize: 18 ,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                  color: Colors.white,

                ),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.security,color: Colors.black,),
                ),
                title: Text("Security",style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),),
              ),
              Text("Control your account security with 2-step verification",
                style: TextStyle(
                  fontSize: 18 ,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0,),
              ListTile(
                title: Text("Sign Out",style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),),
              )
            ],
        ),
      ),
      ),


    );

  }
}