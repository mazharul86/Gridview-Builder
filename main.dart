import 'package:flutter/material.dart';
import 'package:gridviewbuilder/another.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final number = List.generate(100, (index) => "Items: $index");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gridview Builder"),
          centerTitle: true,
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, crossAxisSpacing: 2, mainAxisSpacing: 2),
            itemCount: number.length,
            itemBuilder: (context, index) {
              final items = number[index];
              return GridTile(
                header: Icon(Icons.person),
                footer: Text("This is footer"),
                child: Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 20,
                  color: Colors.blueGrey,
                  child: Text(items),
                ),
              );
            }),
      ),
    );
  }
}
