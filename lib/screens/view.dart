
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ViewStud extends StatefulWidget {
  const ViewStud({Key? key}) : super(key: key);

  @override
  State<ViewStud> createState() => _ViewStudState();
}

class _ViewStudState extends State<ViewStud> {

  var name=[];
  var roll=[];
  var adm=[];
  var col=[];
  TextEditingController sname=TextEditingController();
  TextEditingController sroll=TextEditingController();
  TextEditingController sadmission=TextEditingController();
  TextEditingController scollege=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(25),
              child:Column(
                children: [
                  SizedBox(height: 15,),
                  TextField(
                    controller: sname,
                    decoration: InputDecoration(
                        labelText: "Enter your name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    controller: sroll,
                    decoration: InputDecoration(
                        labelText: "Enter your roll no:",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    controller: sadmission,
                    decoration: InputDecoration(
                        labelText: "Enter your admissionno:",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    controller: scollege,
                    decoration: InputDecoration(
                        labelText: "Enter your college",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                  ),
                  SizedBox(height: 15,),
                  SizedBox(height: 55,
                    width: double.infinity,
                    child:   RaisedButton(
                      color: Colors.teal,

                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      onPressed: (){
                        var getSname=sname.text;
                        var getSroll=sroll.text;
                        var getSadm=sadmission.text;
                        var getScolg=scollege.text;
                        print("Added");
                        setState(() {
                          name.add(getSname);
                          roll.add(getSroll);
                          adm.add(getSadm);
                          col.add(getScolg);
                        });
                      },
                      child: Text("ADD",
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: 40
                      ),
                      ),
                    ),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: name.length==null ? 0 : name.length,
                      itemBuilder:(context,index){
                        return Card(
                          child: ListTile(
                            leading: Icon(Icons.account_box,
                              color: Colors.brown,
                              size: 30,
                            ),
                            trailing: GestureDetector(
                              onTap: (){
                                print(index.toString());
                             setState(() {
                               name.removeAt(index);
                               roll.removeAt(index);
                               adm.removeAt(index);
                               col.removeAt(index);
                             });
                              },
                              child: Icon(Icons.delete,
                                color: Colors.brown,
                                size: 30,
                              ),
                            ),
                            title: Text(name[index],
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 18
                              ),
                            ),
                            subtitle: Text("Roll No : " + roll[index].toString()+"\n"+"Admission No : " + adm[index].toString()+"\n"+"College : " + col[index].toString(),
                              style: TextStyle(
                                  color: Colors.tealAccent,
                                  fontSize: 15
                              ),
                            ),
                          ),
                        );
                      }

                  ) ,
                ],
              )

          ),
        ),
      ),
    );

  }
}
