import 'package:flutter/material.dart';

import 'memberCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: SizedBox(
              height: 70,
              width: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset("assets/image/bhomilogo.png"),
              )),
          title: const Text("BHOMI YOUTH CLUB"),
          centerTitle: true,
          actions: const [
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: MemberCard(),
      ),
    );
  }
}
