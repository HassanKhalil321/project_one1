import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class listve extends StatelessWidget {
  const listve({super.key});

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
              child: Center(
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const FaIcon(
                          FontAwesomeIcons.angleLeft,
                          color: Colors.white,
                          size: 50,
                        )),
                    const Text(
                      'ListView',
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
                height: 1800,
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
                    const Text("1- Horizontal ListView",
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
                      child:  const  SelectableText(
                        '''ListView.builder(
  scrollDirection: Axis.horizontal,
  itemCount: 10,
  itemBuilder: (BuildContext context, int index) {
    return Card(
      child: Container(
        width: 120,
        height: 120,
        child: Center(
          child: Text('Item index'),
        ),
      ),
    );
  },
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
                    const Text("2- ListView with Separated Tiles",
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
                      child: const  SelectableText(
                        '''ListView.separated(
  itemCount: 15,
  separatorBuilder: (BuildContext context, int index) => Divider(),
  itemBuilder: (BuildContext context, int index) {
    return ListTile(
      title: Text('Item index'),
      subtitle: Text('Subtitle for Item index'),
      onTap: () {
        // Action when tapped
      },
    );
  },
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
                    const Text("3- ListView with Different Tile Types",
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
    ListView.builder(
  itemCount: 20,
  itemBuilder: (BuildContext context, int index) {
    if (index.isEven) {
      return ListTile(
        title: Text('Title for Item index'),
        subtitle: Text('Subtitle for Item index'),
        leading: Icon(Icons.account_circle),
        onTap: () {
          // Action when tapped
        },
      );
    } else {
      return Container(
        height: 50,
        color: Colors.grey[300],
        alignment: Alignment.center,
        child: Text('Another Type of Item index'),
      );
    }
  },
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
