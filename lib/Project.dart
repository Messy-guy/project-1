// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  int variable = 0;
  
  void increment(){
    setState(() {
      variable ++;
    });
  }

  void decrement(){
    setState(() {
      variable --;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('My first flutter project'),
        centerTitle:  true,
        backgroundColor: const Color.fromARGB(255, 66, 66, 66),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(60)),
              Text("You have clicked the button",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
                SizedBox(height: 20,),
              Text(variable.toString()),
              SizedBox(height: 20,),
              Text('Times'),
                SizedBox(height: 20,),
              ElevatedButton(onPressed:() {
                increment();
              },
               child: Text('increment') ),
              SizedBox(height: 20,),
               ElevatedButton(onPressed:() {
                decrement();
              },
               child: Text('decrement') )
            ],
          ),
        ),
      ),
    );
  }
}