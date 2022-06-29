import 'package:flutter/material.dart';
import 'package:studentz_app/screens/front.dart';
import 'package:studentz_app/screens/login.dart';
import 'package:studentz_app/screens/menu.dart';
import 'package:studentz_app/screens/profile.dart';
import 'package:studentz_app/screens/sidenav.dart';
import 'package:studentz_app/screens/view.dart';


void main()
{
  runApp(StudzApp());
}
class StudzApp extends StatelessWidget {
  //const StudApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        SideNav();



  }
}
