import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/pages/page_inscription.dart';
import 'pages/home_page.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder : ((context, snapshot){
          if(snapshot.hasData) {
            return Homepage();
        
          }else{
            return PageInscription();
          }
        
        }),
        
        
        
      ),
    );
  }
}