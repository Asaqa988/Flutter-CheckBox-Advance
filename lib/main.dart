import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String myText = "";

  bool uaeCheckBox = true;
  bool saudiArabia = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.white, Colors.grey])),
          width: double.infinity,
          child: Column(
            children: [
              Text(
                "Please Select your country!",
                style: TextStyle(fontSize: 30),
              ),
              CheckboxListTile(
                contentPadding: EdgeInsets.all(50),
                checkColor: Colors.blue,
                isThreeLine: true,
                subtitle: Text("Eg-Dubai",style: TextStyle(fontSize: 15,color: Colors.orange),),
                  title: Text("I am from UAE",style: TextStyle(fontSize: 20,color: Colors.green)),
                  secondary: Icon(Icons.location_city),
                  activeColor: Colors.black,
                  value: uaeCheckBox,
                  onChanged: (val) {
                    setState(() {
                      uaeCheckBox = val!;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
