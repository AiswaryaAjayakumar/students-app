
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentz_app/screens/home.dart';
import 'package:studentz_app/screens/login.dart';
import 'package:studentz_app/screens/menu.dart';
import 'package:studentz_app/screens/profile.dart';
import 'package:studentz_app/screens/view.dart';

class Front extends StatefulWidget {
  @override
  State<Front> createState() => _FrontState();
}

class _FrontState extends State<Front> {
 // const Front({Key? key}) : super(key: key);
  int _mycurrentindex =0;

 var pages=[Menu(),Profile(),Home()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(


        body: pages[_mycurrentindex],

        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              _mycurrentindex=index;
            });
          },
          currentIndex: _mycurrentindex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black38,
          iconSize: 35,
          items: [

            BottomNavigationBarItem(icon: Icon(Icons.menu,
              color: Colors.brown,
            ),
              label: "Menu",

            ),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle,
              color: Colors.deepOrange,
            ),
              label: "Profile",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.home,
              color: Colors.purpleAccent,
            ),
              label: "Home",
            ),
          ],
        ),
      ),

    );





  }
}
