

import 'package:flutter/material.dart';
import 'package:studentz_app/screens/home.dart';
import 'package:studentz_app/screens/menu.dart';
import 'package:studentz_app/screens/profile.dart';

class TabView extends StatelessWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("Students App",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 45
            ),
            ),
            bottom: TabBar(
              tabs: [
                
                Tab(text: "Menu",icon: Icon(Icons.menu),),
                
                Tab(text: "Profile",icon: Icon(Icons.account_circle_rounded),),
                Tab(text: "Home",icon: Icon(Icons.home),)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Menu(),
              Profile(),
              Home()
            ],
          ) ,
        ),
      ),
    );
  }
}
