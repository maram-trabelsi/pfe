// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import'package:sleek_circular_slider/sleek_circular_slider.dart';

class Thermostat extends StatefulWidget {
  const Thermostat({super.key});

  @override
  State<Thermostat> createState() => _ThermostatState();
}

class _ThermostatState extends State<Thermostat> {
  double value = 25;
  @override
  Widget build(BuildContext context) {
    return Center(
     child:  Container(
      width: MediaQuery.of(context).size.width * 0.90,
        height: MediaQuery.of(context).size.width * 0.80 * 0.80,
        decoration: BoxDecoration(
          border: Border.all(color:Color(0xff24b273),width: 2),
          
           boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                       ],
          color: Color.fromARGB(255, 0, 0, 0),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Thermostat',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),

            SizedBox(height: 20),
            SleekCircularSlider(
              appearance: CircularSliderAppearance(
                customColors: CustomSliderColors(
                dotColor:  Color.fromARGB(255, 0, 0, 0),
                progressBarColor: Color(0xff24b273),
                trackColor: Color.fromARGB(255, 255, 255, 255),
              ),
               size: 170,
              startAngle: 150,
              angleRange: 240,
              ),
              min: 10,
            max: 40,
            initialValue: value,
            onChange: (double newValue) {
              setState(() {
                value = newValue;
              });
            },
            ),
            
            Text(
            '${value.toStringAsFixed(0)}°C',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          ],
          
        ),

      ),

    );
  }
}