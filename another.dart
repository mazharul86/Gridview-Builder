import 'package:flutter/material.dart';

class MyGv extends StatefulWidget {
  const MyGv({Key? key}) : super(key: key);

  @override
  _MyGvState createState() => _MyGvState();
}

class _MyGvState extends State<MyGv> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("gridview build"),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        color: Colors.red,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 1),
          itemBuilder: (context, index) {
            return Icon(Icons.padding);
          },
        ),
      ),
    ));
  }
}
