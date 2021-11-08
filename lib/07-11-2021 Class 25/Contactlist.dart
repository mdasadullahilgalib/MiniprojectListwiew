import 'package:flutter/material.dart';
import 'package:project25/07-11-2021%20Class%2025/ContactDataView.dart';

class Contactlist extends StatefulWidget {
  const Contactlist({Key? key}) : super(key: key);

  @override
  _ContactlistState createState() => _ContactlistState();
}

class _ContactlistState extends State<Contactlist> {

  final List contact_data=[

    {
      "name":"Galib",
      "phone": "01829396",

    },
    {
      "name":"Nur Mohammad",
      "phone": "01396",

    },
    {
      "name":"Asek",
      "phone": "018299396",
    },
    {
      "name":"Mijan",
      "phone": "018293496",
    },
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
     body: ListView.builder(
       itemCount: contact_data.length,
       itemBuilder:(BuildContext context, int index){
         return Column(

           children: [
             ListTile(
               leading:CircleAvatar(
                 child: Text(contact_data[index]["name"][0]),
                 
               ),
               title: Text(contact_data[index]["name"]),
               subtitle: Text(contact_data[index]["phone"]),
               onTap: (){

                 Route route =MaterialPageRoute(builder: (context)=>ContactDataView(contact_data[index]));
                 Navigator.push(context, route);
               },
             )
           ],


         );
     }
     )
    );
  }
}
