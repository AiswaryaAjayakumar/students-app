import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentz_app/screens/front.dart';
import 'package:studentz_app/screens/menu.dart';
import 'package:studentz_app/screens/mydrawer.dart';
import 'package:studentz_app/screens/profile.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lime,
          title: Text("Login",
            style: TextStyle(
                color: Colors.teal,
                fontSize: 45
            ),
          ),
        ),
        drawer:MyDrawer(),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(25),
            child: Column(
              children: [

                SizedBox(height: 60,),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 15,),

                TextField(
                  obscureText: true,
                  decoration: InputDecoration(

                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),



                SizedBox(height: 15,),
                SizedBox(height: 55,
                  width: double.infinity,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    color: Colors.indigo,

                    onPressed: (){


                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));


                    },
                    child: Text("LOGIN",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 30
                      ),
                    ),
                  ),
                ),





              ],
            ),
          ),
        ),
      ),
    );
  }
}
