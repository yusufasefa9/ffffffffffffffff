import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      "name": "Desktop",
      "icon": Icons.computer,
      "price": "\$3000",
    },
    {
      "name": "Smartphone",
      "icon": Icons.smartphone,
      "price": "\$2000",
    },
    {
      "name": "Cable",
      "icon": Icons.usb,
      "price": "\$150",
    },
    {
      "name": "Mouse",
      "icon": Icons.mouse,
      "price": "\$350",
    },
    {
      "name": "Smart Screen",
      "icon": Icons.tv,
      "price": "\$2000",
    },
    {
      "name": "Tablet",
      "icon": Icons.tablet_android,
      "price": "\$1000",
    },
    {
      "name": "Camera",
      "icon": Icons.camera_alt,
      "price": "\$3500",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Application'),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(30),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: Icon(items[index]["icon"]),
                title: Text(items[index]["name"]),
                subtitle: Text(items[index]["price"]),
                trailing: Icon(Icons.edit),
              ),
            );
          },
        ),
      ),
    );
  }
}
