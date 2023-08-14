import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World!',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text('Hello World!',
                style: TextStyle(color: Colors.white, fontSize: 30)),
          ),
          body: Column(children: [
            Expanded(
              child: Container(
                height: double.infinity,
                color: Colors.cyan,
              ),
            ),
            Expanded(
                child: Container(
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.height * .75,
              // ignore: sort_child_properties_last
              child: Image.network(
                  'https://res.cloudinary.com/practicaldev/image/fetch/s--5SXqnWZ2--/c_imagga_scale,f_auto,fl_progressive,h_420,q_66,w_1000/https://dev-to-uploads.s3.amazonaws.com/i/2ciu6mo6r9x9zyverc10.gif'),
              alignment: const AlignmentDirectional(-1, -1),
              color: Colors.blueAccent,
            )),
            const Expanded(
                child: Text(
              "Hello World",
              style: TextStyle(fontSize: 24),
            )),
            Expanded(
                child: Container(
              height: MediaQuery.of(context).size.width,
              color: Colors.lightBlueAccent,
            ))
          ]),
          bottomNavigationBar:
              BottomNavigationBar(items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded),
                label: "Search",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.admin_panel_settings),
                label: "Settings",
                backgroundColor: Colors.black),
          ])),
    );
  }
}
