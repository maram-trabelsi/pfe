// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:myapp/pages/home_page.dart';
class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int? _selectedIndex ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            backgroundColor: Colors.black,
            body: SafeArea(
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                  Center(child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
                    child: Text('Notifications',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                  )),
                     Padding(
                       padding: EdgeInsets.fromLTRB(10, 40, 10, 0), 
                       
                         child: Container(
                                                   
                          width: 400,
                          height: 120,
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
                            Text('confirmation d`action :',
                            style: TextStyle
                            (color: Colors.white,fontSize:18,fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                          
                             Padding(
                               padding: const EdgeInsets.all(10),
                               child: Text('"Les lumières du salon ont été éteintes avec succès."',
                               style: TextStyle
                               (color: Color.fromARGB(255, 161, 157, 157),fontSize:16,fontWeight: FontWeight.bold)),
                             ),
                              ],
                          ),
                       ),
                       

                     ),
                     Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: Container(
                                                   
                          width: 400,
                          height: 120,
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
                            Text('Alert :',
                            style: TextStyle
                            (color: Color.fromARGB(255, 176, 0, 0),fontSize:20,fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                          
                             Padding(
                               padding: const EdgeInsets.all(10),
                               child: Text('" La température est supérieure à 30°C"',
                               style: TextStyle
                               (color: Color.fromARGB(255, 161, 157, 157),fontSize:16,fontWeight: FontWeight.bold)),
                             ),
                              ],
                          ),
                       ),
                     ),
                ],
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