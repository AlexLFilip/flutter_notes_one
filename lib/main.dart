import 'package:flutter/material.dart';


void main() => runApp(MyNotes());

class MyNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyNotesScreen();
  }
}


class MyNotesScreen extends StatefulWidget {
  @override
  _MyNotesScreenState createState() => _MyNotesScreenState();
}

class _MyNotesScreenState extends State<MyNotesScreen> {

  final List<String> title = ['note1','note2','note3'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('MyNotesScreen'),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: title.length ,
              itemBuilder: (BuildContext context, int index){
                return Container(
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Text(index.toString()),
                        Text(title[index]),
                      ],
                    ),
                  ),
                );
              },
          ),
        ),
      ),
    );
  }
}


