import 'package:flutter/material.dart';
import 'package:projects/main.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text("Settings Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            
            child:Padding(padding:
            EdgeInsets.symmetric( horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.person,
                  color: Colors.grey,),

                Text("Profile Details"),

                Padding(padding:
                EdgeInsets.symmetric( horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.password,
                  color: Colors.grey,),

                Text("Password"),

                Padding(padding:
                EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.notifications,
                        color: Colors.grey,),

                      Text("Notifications"),

              ],
            ),
          ),
          ],
    ),
            )
                ]
      ),
    ),
          )
          )
    ]
      )
    );
  }
}
