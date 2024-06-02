// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class OnOffSwitch extends StatefulWidget {
 
  @override
  State<OnOffSwitch> createState() => __OnOffSwitchState();
}

class __OnOffSwitchState extends State<OnOffSwitch> {
  bool _isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
      
      Padding(
        padding: const EdgeInsets.all(14),
        child: Text(_isSwitched? 'ON': 'OFF',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      SizedBox(width: 30),
      Switch(
        
       value: _isSwitched,
       onChanged:(value){
        setState(() {
          _isSwitched=value;
        });
       
      },
         activeColor:Color.fromARGB(255, 8, 93, 158),
          inactiveThumbColor: Colors.grey, 
           inactiveTrackColor: Colors.grey[300],
      ),
      
      ],
    );
  }
}