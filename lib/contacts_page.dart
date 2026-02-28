import 'package:flutter/material.dart';
import 'package:projects/main.dart';

class ContactsPage extends StatelessWidget {
const ContactsPage({
super.key,
});

@override
    Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.cyan,
    appBar: AppBar(
      title: Text("Contact Page"),
    ),
body: Column(
  children: [
    Padding(padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: Container(
          width: 45,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.person),
              SizedBox(width: 10,), // to give space between text and icons
              Text("First Contact", style: TextStyle(fontSize: 20) ,),
            ],
          ),
        ),
      
    ),
    SizedBox(height: 10,),
    
    Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Container(
        width: 45,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.person),
            SizedBox(width: 10,), // to give space between text and icons
            Text("Second Contact", style: TextStyle(fontSize: 20) ,),
          ],
        ),
      ),
    ),
    SizedBox(height: 10,),

    Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Container(
        width: 45,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.person),
            SizedBox(width: 10,), // to give space between text and icons
            Text("Second Contact", style: TextStyle(fontSize: 20) ,),
          ],
        ),
      ),
    )
  ],
),
  );
}
    }
