import 'package:fast_defense/Home%20Page/message.dart';
import 'package:fast_defense/Home%20Page/settings.dart';
import 'package:fast_defense/Home%20Page/your_trips.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Pickup extends StatefulWidget {
  const Pickup({super.key});

  @override
  State<Pickup> createState() => _Pickupstate();
}
String? firstName;
String? LastName;
String? emailaddress;
var fullName;

class _Pickupstate extends State<Pickup> {
  @override
  void initState() {
    super.initState();
    loadUserInfo();
  }
  Future<void> loadUserInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      firstName = prefs.getString('firstName');
      LastName = prefs.getString('LastName');
      emailaddress = prefs.getString('emailaddress');
      fullName = firstName! + LastName!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        drawer: Drawer(
        child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                accountName: Text(fullName! ,style: TextStyle(color:Colors.white,fontSize: 15)),
                accountEmail: Text(emailaddress??'',style: TextStyle(color:Colors.white,fontSize: 20)),
                currentAccountPicture: Image.network("https://static.toiimg.com/thumb/msid-68124570,imgsize-229073,width-400,resizemode-4/68124570.jpg"),
              )
          ),

          ListTile(
              leading: Icon(Icons.message),
              title: Text("Massage"),
          onTap: (){Navigator.push(context,
              MaterialPageRoute(builder: (context)=> message()));},
          ),
          ListTile(
            leading: Icon(Icons.car_crash_outlined),
            title: Text("Your Trips"),
            onTap: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=> Your_trips()));},),
          ListTile( leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: (){Navigator.push(context,
                MaterialPageRoute(builder: (context)=> Settings()));},)
      ],
    ),
    ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            backgroundColor: Colors.green,
            title: Text("To find your pickup location"),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.location_on))
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 214,
              color: Colors.indigoAccent,
              child: Image.network("https://img.freepik.com/premium-vector/emergency-teams-nurses-rushed-accident-victims-hospital_353206-408.jpg?w=1060")
            ),
          )
         // Container(),
        ],
      ),
    );
  }}