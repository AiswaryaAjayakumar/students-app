import 'package:flutter/material.dart';
import 'package:studentz_app/screens/home.dart';
import 'package:studentz_app/screens/login.dart';
import 'package:studentz_app/screens/profile.dart';
import 'package:studentz_app/screens/sidenav.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black26,
      child: ListView(

        children: [
          UserAccountsDrawerHeader(

            decoration: BoxDecoration(
              color: Colors.green
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage:NetworkImage("https://image.shutterstock.com/image-vector/background-groups-students-front-college-260nw-1962550804.jpg") ,
            ),
              accountName: Text("Arnav",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 25
              ),
              ),
              accountEmail: Text("arnav@gmail.com",
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 20
                ),
              ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
            },
            trailing: Icon(Icons.account_circle_rounded,
              color: Colors.orangeAccent,
              size:30 ,
            ),
            title: Text("Login",
              style: TextStyle(
                color: Colors.white,
                  fontSize: 25
              ),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
            },
            trailing: Icon(Icons.account_circle_rounded,
              color: Colors.orangeAccent,
              size:30 ,
            ),
            title: Text("Profile",
    style: TextStyle(
        color: Colors.white,
    fontSize: 25
    ),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));

            },
            trailing: Icon(Icons.home,
              color: Colors.orangeAccent,
              size:30 ,
            ),
            title: Text("Home",

    style: TextStyle(
        color: Colors.white,
    fontSize: 25
    ),
    ),
          )
        ],
      ),
    );
  }
}
