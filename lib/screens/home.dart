import 'package:flutter/material.dart';
import 'package:studentz_app/screens/front.dart';
import 'package:studentz_app/screens/login.dart';
import 'package:studentz_app/screens/mydrawer.dart';
import 'package:studentz_app/screens/profile.dart';
import 'package:studentz_app/screens/view.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lime,

          title: Text("Home",
            style: TextStyle(
                color: Colors.teal,
                fontSize: 40
            ),
          ),
        ),
        drawer: MyDrawer(),
        body: Container(
          margin: EdgeInsets.all(25),
          child: Column(
            children: [
              SizedBox(height: 25,),

              Text("''Education is not the  ",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 30
                ),
              ),
              Text("learning of facts, but ",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 30
                ),
              ),
              Text("the training of the      ",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 30
                ),
              ),
              Text("mind to think..''           ",
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 30
                ),
              ),
              SizedBox(height: 25,),
              Text("                -ALbert Einstein",
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 20
                ),
              ),
              SizedBox(height: 25,),

              Text("''A good education is   ",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30
                ),
              ),
              Text("a foundation for a     ",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30
                ),
              ),
              Text("better future..''           ",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30
                ),
              ),
              SizedBox(height: 25,),
              Text("                -Elizabeth Warren",
                style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    fontSize: 20
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
