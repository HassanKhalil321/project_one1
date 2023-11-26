import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class stackk extends StatelessWidget {
  const stackk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: 80),
            Container(
              width: double.infinity,
              height: 120,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(4, 1, 46, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child:  Center(
                child: Row(
                  children: [
                    TextButton(onPressed:() {
                      Navigator.pop(context);
                    }, child: const  FaIcon(FontAwesomeIcons.angleLeft,color: Colors.white,size: 50,)),
                    const Text(
                      'Stack',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 215, 0, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
                width: double.infinity,
                height: 2200,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(4, 1, 46, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("1-Stack with Positioned Widgets",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 215, 0, 1),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          border: Border.all(
                              width: 5,
                              color: const Color.fromRGBO(255, 215, 0, 1))),
                      child: const SelectableText(
                        '''Stack(
  children: [
    Container(
      color: Colors.yellow,
      height: 200,
      width: double.infinity,
    ),
    Positioned(
      top: 20,
      left: 20,
      child: Container(
        color: Colors.blue,
        height: 50,
        width: 50,
      ),
    ),
    Positioned(
      bottom: 20,
      right: 20,
      child: Container(
        color: Colors.red,
        height: 70,
        width: 70,
      ),
    ),
    // Add more Positioned widgets here
  ],
)
''',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("2- Stack with Image and Text Widgets",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 215, 0, 1),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          border: Border.all(
                              width: 5,
                              color: const Color.fromRGBO(255, 215, 0, 1))),
                      child: const SelectableText(
                        '''Stack(
  alignment: Alignment.center,
  children: [
    Image.network(
      'https://via.placeholder.com/350x150',
      fit: BoxFit.cover,
      width: double.infinity,
      height: 200,
    ),
    Text(
      'Hello, Stack!',
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
  ],
)
''',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("3- Stack with Overlapping Containers with Containers",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 215, 0, 1),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          border: Border.all(
                              width: 5,
                              color: const Color.fromRGBO(255, 215, 0, 1))),
                      child: const SelectableText(
                        '''Stack(
  alignment: Alignment.center,
  children: [
    Container(
      width: 200,
      height: 200,
      color: Colors.blue,
    ),
    Positioned(
      top: 40,
      left: 40,
      child: Container(
        width: 150,
        height: 150,
        color: Colors.red,
      ),
    ),
    Positioned(
      top: 80,
      left: 80,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
    ),
  ],
)
''',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );

  }
}
