import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'learn.dart';
import 'TakeCode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                decoration: const  BoxDecoration(
                  borderRadius:  BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomRight: Radius.circular(250)),
                  color:  Color.fromRGBO(4, 1, 46, 1),
                ),
                height: 470,
                width: double.infinity,
                child: const Column(
                  children: [
                    SizedBox(
                        height: 80,
                        child: Text(
                          "Code Assistant ",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                    FaIcon(FontAwesomeIcons.laptopCode,
                        color: Colors.white, size: 200)
                  ],
                )),

            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromRGBO(255, 215, 0, 1),
                      spreadRadius: 2.0,
                      offset: Offset(0.0, 3.0))
                ],
                color: const Color.fromRGBO(4, 1, 46, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              width: 350.0,
              height: 80.0,
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Learn()));
                  },
                  child: const Row(
                    children: [
                      FaIcon(FontAwesomeIcons.code,
                          size: 50, color: Color.fromRGBO(255, 215, 0, 1)),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Learn How To Code    >",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ),
            const SizedBox(height: 20.0), // Space between containers
            Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromRGBO(255, 215, 0, 1),
                      spreadRadius: 2.0,
                      offset: Offset(0, 3))
                ],
                border: Border.all(color: Colors.transparent, width: 5),
                color: const Color.fromRGBO(4, 1, 46, 1),
                borderRadius: BorderRadius.circular(20),
              ),
              width: 350.0,
              height: 80.0,
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const TakeCode()));
                  },
                  child: const Row(
                    children: [
                      FaIcon(FontAwesomeIcons.coffee ,
                          size: 50, color: Color.fromRGBO(255, 215, 46, 1)),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Take Ready Code        >",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
