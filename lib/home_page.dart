import 'package:flutter/material.dart';
import 'package:projects/main.dart';
import 'package:projects/settings_page.dart';




class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState( (){
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text("AddressBook"),
      ),





      body:IndexedStack( children: [
        HomePageBody(),
        ContactsPage(),
        Container()
      ],index: _selectedIndex,),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) =>_navigateBottomBar(index),
        currentIndex: _selectedIndex,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Contact"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ]
      ),










    );
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [

        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
        child:Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),

          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                    Text("Quick Start",
                      style: TextStyle(fontSize: 25),
                    ),
              SizedBox(height: 10,),

              Text("Manage your contacts efficiently with our address book app",
              style: TextStyle(fontSize: 18),),
              SizedBox(height: 15,),

              Container(
                height: 35,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(padding:
                EdgeInsets.symmetric( horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.add,
                      color: Colors.black,),

                    Text("Add Contacts",
                    style: TextStyle(color: Colors.black,
                    fontSize: 16
                    ),
                    ),
                  ],
                ),
                ),

              )


            ],
          ),



        ),
        ),
        SizedBox(height: 100,),
        // features box
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20) ,
        child: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),

         padding: EdgeInsets.all(16),//in the container
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // children to the side
            children: [
              // create n manage contacts
              Row(
                children: [
                  Icon(Icons.check, color: Colors.greenAccent,),
                  SizedBox(width: 10,) ,// space between the the icon and text
                  Text("Create and Manage Contacts",
                  style: TextStyle(fontSize: 20),),
                ],
              ),
              SizedBox(height: 20,), // space between bullet points
              Row(
                children: [
                  Icon(Icons.check, color: Colors.greenAccent,),
                  SizedBox(width: 10,),
                  Text("Search and Filter Contacts",
                  style: TextStyle(fontSize: 20),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.check, color: Colors.greenAccent,),
                  SizedBox(width: 10,),
                  Text("Customize your settings",
                  style: TextStyle(fontSize: 20),),
                ],
              ),
            ],
          ),
        ),

        ),
      ],
    );
  }
}