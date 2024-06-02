


// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/main.dart';

class PageInscription extends StatefulWidget {
  const PageInscription({super.key});

  @override
  State<PageInscription> createState() => _PageInscriptionState();
}

class _PageInscriptionState extends State<PageInscription> {
  final _emailcontroller = TextEditingController();
  final _passwordController = TextEditingController();
  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword
    (email: _emailcontroller.text.trim(), password: _passwordController.text.trim());
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailcontroller.dispose();
    _passwordController.dispose();  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
       body: SafeArea(
         child: Center(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset ('images/pic2.png',
            height: 150,
          
            ),
        
            //title
            Text('Connexion',
            style: GoogleFonts.robotoCondensed(
               fontSize : 30, 
               fontWeight:FontWeight.bold,
               color: Colors.white,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20,
            ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25),
             child: Container(
              decoration: BoxDecoration(
                 color: Color.fromARGB(255, 91, 91, 91),
                 borderRadius: BorderRadius.circular(12),
              ),
               // ignore: prefer_const_constructors
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: TextField(
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'E-mail',
                  ),
                 ),
               ),
             ),
           ),
            SizedBox(
              height: 10,
            ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25),
             child: Container(
              decoration: BoxDecoration(
                 color: Color.fromARGB(255, 91, 91, 91),
                 borderRadius: BorderRadius.circular(12),
              ),
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Mot de passe',
                  ),
                 ),
               ),
             ),
           ),
           SizedBox(
              height: 15,
            ),

           
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25),
             child: GestureDetector(
              onTap:signIn ,
               child: Container(
                padding: EdgeInsets.all(16),
                decoration:BoxDecoration(
                  color: Color(0xff24b273),
                  borderRadius: BorderRadius.circular(12),
                ) ,
                child: Center(
                  child: Text(
                   ' Se connecter',
                     style: GoogleFonts.robotoCondensed(
                        color: Colors.black,
                       fontWeight: FontWeight.bold,
                       fontSize:18,
                      ),
                  ),
                ),
                
               ),
             ),
           ),
           SizedBox(
              height: 15,
            ),



                 ],),
         ),
       ),
    );
  }
}