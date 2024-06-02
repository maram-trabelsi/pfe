// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/pages/chambre_1.dart';
import 'package:myapp/pages/chambre_2.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:myapp/pages/notif_page.dart';
import 'package:myapp/pages/on_off_switch.dart';
import 'package:myapp/pages/salon_page.dart';
import 'package:myapp/pages/toi.dart';
class Cuisine extends StatefulWidget {
  const Cuisine({super.key});

  @override
  State<Cuisine> createState() => _CuisineState();
}

class _CuisineState extends State<Cuisine> {
  int? _selectedIndex ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
             Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/pic2.png',
                    width: 120,
                  ),
                  IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.notifications, size: 45),
                    onPressed: () {
                       Navigator.push(context,
                         MaterialPageRoute(builder:(context)=>NotificationPage()),);
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
            child:Text('Bonjour, Maram',
            style: TextStyle(color:Colors.white,
            fontSize: 25,fontWeight: 
            FontWeight.bold),)
        ),
        SizedBox(height: 20),
        Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Icon(Icons.wb_sunny,color: Color.fromARGB(255, 250, 250, 4),),
            SizedBox(width: 10),
            Text('11 Mars 2024',style: TextStyle(color:Colors.white ,fontSize:17,fontWeight: FontWeight.bold)),
          ],
        ),
        ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
            child:SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            
              child: Row(
                children: [
                
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(115, 20),
                         backgroundColor: (Colors.black),
                        foregroundColor: ( Colors.white),
                        side: BorderSide(color:Color(0xff24b273),width:1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
                      onPressed: () {
                        Navigator.push(context,
                         MaterialPageRoute(builder:(context)=>SalonPage()),);
                      },
                      child: Text('salon',style: TextStyle( fontWeight: FontWeight.bold,),),
                    ),
                  
                  SizedBox(width: 10),
                  
                     ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(115, 20),
                         backgroundColor: (Colors.black),
                        foregroundColor: ( Colors.white),
                        side: BorderSide(color:Color(0xff24b273),width:1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
                      onPressed: () {
                        Navigator.push(context,
                         MaterialPageRoute(builder:(context)=>Chambre1()),);
                      },
                      child: Text('Chambre',style: TextStyle( fontWeight: FontWeight.bold,),),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(115, 20),
                         backgroundColor: (Colors.black),
                        foregroundColor: ( Colors.white),
                        side: BorderSide(color:Color(0xff24b273),width:1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
                      onPressed: () {
                        Navigator.push(context,
                         MaterialPageRoute(builder:(context)=>Chambre2()),);
                      },
                      child: Text('Chambre',
                      style: TextStyle( fontWeight: FontWeight.bold,),),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(115, 20),
                         backgroundColor: (Colors.black),
                        foregroundColor: ( Colors.white),
                        side: BorderSide(color:Color(0xff24b273),width:1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
                      onPressed: () {
                        Navigator.push(context,
                         MaterialPageRoute(builder:(context)=>Cuisine()),);
                      },
                      child: Text('Cuisine',
                      style: TextStyle( fontWeight: FontWeight.bold,),),
                    ),
                    SizedBox(width: 10),
                     ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(115, 20),
                         backgroundColor: (Colors.black),
                        foregroundColor: ( Colors.white),
                        side: BorderSide(color:Color(0xff24b273),width:1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
                      onPressed: () {
                       Navigator.push(context,
                         MaterialPageRoute(builder:(context)=>Toilette()),);
                      },
                      child: Text('Toilette',
                      style: TextStyle( fontWeight: FontWeight.bold,),),
                    ),

                  
                  // Add more buttons here
                ],
              ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                       height:190,
                      decoration: BoxDecoration(
                        color:Color(0xff24b273),
                       borderRadius: BorderRadius.circular(10),
                       boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                       ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            width:50,
                            height:50,
                             decoration: BoxDecoration(
                               image: DecorationImage(
                               image: AssetImage('images/hang-lamp.png'),
                              ),
                            ),
                          ),
                         SizedBox(height: 10),
                         Text('Éclairage',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 20,fontWeight: FontWeight.bold),),
                         SizedBox(height: 40),
                          OnOffSwitch(),
                         
                      ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                       height:190,
                      decoration: BoxDecoration(
                        color:Color.fromARGB(255, 0, 0, 0),
                        border: Border.all(color: Color(0xff24b273),width: 2),
                       borderRadius: BorderRadius.circular(10),
                       boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                       ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            width:50,
                            height:50,
                             decoration: BoxDecoration(
                               image: DecorationImage(
                               image: AssetImage('images/travel.png'),
                              ),
                            ),
                          ),
                         SizedBox(height: 10),
                         Text('Climatisation',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                         SizedBox(height: 40),
                          OnOffSwitch(),
                         
                      ],
                      ),
                    ),
                  ),
                  
                 
                 
                ],
              ),

            ),
            Padding(
              padding:EdgeInsets.all(10),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.all(10),
                  child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                       height:190,
                      decoration: BoxDecoration(
                        color:Color.fromARGB(255, 0, 0, 0),
                        border: Border.all(color: Color(0xff24b273),width: 2),
                       borderRadius: BorderRadius.circular(10),
                       boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                       ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            width:50,
                            height:50,
                             decoration: BoxDecoration(
                               image: DecorationImage(
                               image: AssetImage('images/heater.png'),
                              ),
                            ),
                          ),
                         SizedBox(height: 10),
                         Text('Chauffage',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                         SizedBox(height: 40),
                          OnOffSwitch(),
                         
                      ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                       height:190,
                      decoration: BoxDecoration(
                        color:Color(0xff24b273),
                       borderRadius: BorderRadius.circular(10),
                       boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                       ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            width:50,
                            height:50,
                             decoration: BoxDecoration(
                               image: DecorationImage(
                               image: AssetImage('images/refrigerator.png'),
                              ),
                            ),
                          ),
                         SizedBox(height: 10),
                         Text('Frigidaire',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 20,fontWeight: FontWeight.bold),),
                         SizedBox(height: 40),
                          OnOffSwitch(),
                         
                      ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
            Padding(
              padding:EdgeInsets.all(10),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.all(10),
                  child: Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                       height:190,
                      decoration: BoxDecoration(
                        color:Color(0xff24b273),
                        
                       borderRadius: BorderRadius.circular(10),
                       boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                       ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            width:50,
                            height:50,
                             decoration: BoxDecoration(
                               image: DecorationImage(
                               image: AssetImage('images/curtains.png'),
                              ),
                            ),
                          ),
                         SizedBox(height: 20),
                         Text('Rideaux',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 18,fontWeight: FontWeight.bold),),
                         SizedBox(height: 30),
                          OnOffSwitch(),
                         
                      ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],

        ),
        ),
      ),
      bottomNavigationBar
      : BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        selectedItemColor: _selectedIndex != null ? Color.fromARGB(255, 39, 219, 129) : Colors.grey,
        unselectedItemColor: Colors.grey,
         currentIndex: _selectedIndex ?? 0 ,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            if (_selectedIndex==1){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Homepage()),);
            }
          });
        },
       
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'paramètres',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}