
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:myapp/chart_container.dart';
import 'package:myapp/pages/chambre_1.dart';
import 'package:myapp/pages/chambre_2.dart';
import 'package:myapp/pages/cui.dart';
import 'package:myapp/pages/notif_page.dart';
import 'package:myapp/pages/salon_page.dart';
import 'package:myapp/pages/thermostat.dart';
import 'package:myapp/pages/toi.dart';
import 'package:myapp/pie_chart.dart';
import 'package:firebase_database/firebase_database.dart';
import 'add_room_screen.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 1;

  void addroom(String roomName){
    final DatabaseReference ref = FirebaseDatabase.instance.ref('rooms').push();
    ref.set({
      'name': roomName,
      'devices': {}
    });
  }
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              child: Text(
                'Bonjour, Maram',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.wb_sunny,
                    color: Color.fromARGB(255, 250, 250, 4),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '11 Mars 2024', // Example date
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold
                    ),
                  ),
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
                        fixedSize: Size(140, 20),
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
                        fixedSize: Size(140, 20),
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
                        fixedSize: Size(140, 20),
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
                        fixedSize: Size(140, 20),
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
                        fixedSize: Size(140, 20),
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
                    SizedBox(width: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(140, 20),
                         backgroundColor: (Colors.black),
                        foregroundColor: ( Colors.white),
                        side: BorderSide(color:Color(0xff24b273),width:1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
                      onPressed: () {
                        Navigator.push( context,
                              MaterialPageRoute(builder: (context) => AddRoomScreen()),
                               );
                      },
                      child: Text('ajouter',
                      style: TextStyle( fontWeight: FontWeight.bold,),),
                    ),
                    

                  
                  // Add more buttons here
                ],
              ),
              ),
            ),
            SizedBox(height: 20),
           Padding(
  padding: const EdgeInsets.all(20),
  child: Row(
    children: [
      // Temperature box
      Container(
        width: MediaQuery.of(context).size.width /2.5,
        height:90,
        decoration: BoxDecoration(
          color:Color.fromARGB(255, 0, 0, 0),
           border: Border.all(color:Color(0xff24b273)),
            boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                       ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 35,
              height: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/t.png'),
                ),
              ),
            ),
            SizedBox(width:1),
            Text(
              'Température: 30°',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      SizedBox(width: 40),
      // Humidity box
      Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: 90,
        decoration: BoxDecoration(
          color:Color.fromARGB(255, 0, 0, 0),
          border: Border.all(color:Color(0xff24b273)),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 35,
              height: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/humidity.png'),
                ),
              ),
            ),
            SizedBox(width: 5),
            Text(
              'Humidité: 30%',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),

           SizedBox(height: 30),
               
               Center(
                 child: Container(
                 width: MediaQuery.of(context).size.width * 0.90,
                 height: MediaQuery.of(context).size.width * 0.80 * 0.80,
                  color: Color.fromARGB(255, 0, 0, 0),
                
                  child:
                     ChartContainer(
                     
                     title: 'Consommation de l`ènergie', 
                     color: Color.fromARGB(255, 0, 0, 0), 
                     
                     chart: PieChartContent()
                    ), 
                              
                  
                             ),
                 
               ) ,
              SizedBox(height: 40),
            
              Thermostat(),
          ],
          
          
        ),
        ),
      ),
        bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        selectedItemColor: Color(0xff24b273),
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
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
