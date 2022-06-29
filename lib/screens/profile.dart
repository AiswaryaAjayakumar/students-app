


import 'package:flutter/material.dart';
import 'package:studentz_app/screens/mydrawer.dart';

class Profile extends StatelessWidget {
//  const ViewEmp({Key? key}) : super(key: key);
  var name=["Arnav"];
  var roll=[05];
  var adm=[0154];
  var col=["ABCD"];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title: Text("Profile",
          style: TextStyle(
            color: Colors.teal,
            fontSize: 50
          ),
          ),
        ),
        drawer: MyDrawer(),
        body: Container(
          child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (context,index){
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.account_circle_rounded,
                      color:Colors.brown,
                      size: 50,
                    ),

                    trailing: Icon(Icons.edit,
                      color: Colors.black26,
                      size: 50,
                    ),
                    title: Text(name[index],
                      style: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 25

                      ),
                    ),
                    subtitle: Text("Roll no : " + roll[index].toString()+"\n"+"Admission no : " + adm[index].toString()+"\n"+"College : " + col[index].toString(),
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 18
                      ),
                    ),
                  ),
                );
              }

          ),
        ),
      ),

    );





  }
}
