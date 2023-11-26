import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Singlev extends StatelessWidget {
  const Singlev({super.key});

  @override
  Widget build(BuildContext context) {
    {
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
                      'SingleChildScrollView',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 215, 0, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
                width: double.infinity,
                height: 2000,
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
                    const Text("1-SingleChildScrollView with a Single Child ListView",
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
                        '''SingleChildScrollView(
  child: Column(
    children: [
      ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          ListTile(
            title: Text('Item 1'),
          ),
          ListTile(
            title: Text('Item 2'),
          ),
          ListTile(
            title: Text('Item 3'),
          ),
          // Add more list items here
        ],
      ),
    ],
  ),
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
                    const Text("2- SingleChildScrollView with ListTile",
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
                        '''SingleChildScrollView(
  child: Column(
    children: [
      ListTile(
        title: Text('Item 1'),
      ),
      ListTile(
        title: Text('Item 2'),
      ),
      ListTile(
        title: Text('Item 3'),
      ),
      // Add more list items here
    ],
  ),
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
                    const Text("3- SingleChildScrollView with Containers",
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
                        '''SingleChildScrollView(
  child: Column(
    children: [
      Container(
        height: 100,
        color: Colors.red,
        margin: EdgeInsets.symmetric(vertical: 10),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        margin: EdgeInsets.symmetric(vertical: 10),
      ),
      Container(
        height: 100,
        color: Colors.green,
        margin: EdgeInsets.symmetric(vertical: 10),
      ),
      // Add more containers here
    ],
  ),
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
}
