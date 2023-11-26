import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Cardss extends StatelessWidget {
  const Cardss({super.key});

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
                      'Cards',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 215, 0, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
                width: double.infinity,
                height: 3200,
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
                    const Text("1-Simple Card",
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
                        '''
Card(
  elevation: 4,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Title',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Description goes here...',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
      ],
    ),
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
                    const Text("2- Image Card",
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
                        '''
Card(
  elevation: 4,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
        child: Image.network(
          'https://via.placeholder.com/300x150', // Your image URL
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
      Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Description goes here...',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
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
                    const Text("3- Card with Button",
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
                        '''
Card(
  elevation: 4,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Title',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      SizedBox(height: 8),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          'Description goes here...',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
      ),
      SizedBox(height: 16),
      ElevatedButton(
        onPressed: () {
          // Add your action here
        },
        child: Text('Action'),
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
                  ],
                )),
          ],
        ),
      ),
    );

  }
}
