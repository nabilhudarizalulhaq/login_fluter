import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'listName.dart';


class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {

  final List<Listname> listname=[
    Listname(name: 'Nabil', email: 'EMAIL@GMAIL.COM')
  ];

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title:
        Text('Third Scrreen'),
        ),
        body: ListView(
          children: listname.map((e)  {
            return Card(
              child: Row(
                children: [
                  Container(child: Text(e.name),)
                ],
              ),
          );
          }).toList(),
        ),
      ),
    );
  }
}
