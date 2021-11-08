import 'package:flutter/material.dart';

class ContactDataView extends StatefulWidget {

  var showData;

  ContactDataView(this.showData);



  @override
  _ContactDataViewState createState() => _ContactDataViewState(this.showData);
}

class _ContactDataViewState extends State<ContactDataView> {

  var showData;
  _ContactDataViewState(this.showData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [


            Text("Name: ${showData['name']}"),
            Text("Phone: ${showData['phone']}")




          ],

        ),
      ),


    );
  }
}
