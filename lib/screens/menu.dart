import 'package:flutter/material.dart';
import 'package:studentz_app/screens/front.dart';
import 'package:studentz_app/screens/login.dart';
import 'package:studentz_app/screens/profile.dart';
import 'package:studentz_app/screens/view.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child:   Center(child: Text("STUDENTS PROFILE",
    style: TextStyle(
    color: Colors.purple,
    fontSize: 30
    ),
    )),

    );

      }
}
