import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: ConstrainedBox(
          // when i want to use expand or shrink that time we use Constrained Box
          constraints: const BoxConstraints(
            maxWidth: 160, // maxHeight and width is used for SizedBox.expand
            maxHeight: 120,
            minHeight: 60, // minHeight and width is used for SizedBox.shrink
            minWidth: 100,
          ),
          child: SizedBox.expand(
            // Normal sized box is used instead of
            // container used to give a size of widget
            // width: 150,
            // height: 100,
            child: ElevatedButton(
              onPressed: () {
                print("Working!");
              },
              child: Text("Click"),
            ),
          ),
        ));

    // ## SizedBox.square

    // child: SizedBox.square(
    // dimension: 200;        // ## used to create square box dimension define the size of square box
    //   // Normal sized box is used instead of
    //   // container used to give a size of widget
    //   // width: 150,
    //   // height: 100,
    //   child: ElevatedButton(
    //     onPressed: () {
    //       print("Working!");
    //     },
    //     child: Text("Click"),
    //   ),
    // ),
  }
}
