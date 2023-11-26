import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarC extends StatefulWidget {
  const AppBarC({Key? key}) : super(key: key);

  @override
  State<AppBarC> createState() => _AppBarCState();
}

class _AppBarCState extends State<AppBarC> {
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
                      'AppBar',
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
                height: 2550,
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
                    const Text("1-App Bar with Title and Actions",
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
AppBar(
  title: Text('My App'),
  actions: [
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        // Perform search action
      },
    ),
    IconButton(
      icon: Icon(Icons.notifications),
      onPressed: () {
        // Perform notifications action
      },
    ),
    IconButton(
      icon: Icon(Icons.settings),
      onPressed: () {
        // Perform settings action
      },
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
                    const Text("2- App Bar with Tabs",
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
Scaffold(
  appBar: AppBar(
    title: const Text('App Bar with Tabs'),
    centerTitle: false, // Ensures title alignment to the left
    bottom: const TabBar(
      tabs: [
        Tab(text: 'Tab 1'),
        Tab(text: 'Tab 2'),
        Tab(text: 'Tab 3'),
      ],
    ),
  ),
  body: TabBarView(
    children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Tab 1 content',
          textAlign: TextAlign.left,
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Tab 2 content',
          textAlign: TextAlign.left,
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Tab 3 content',
          textAlign: TextAlign.left,
        ),
      ),
    ],
  ),
);

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
                    const Text("3- Sliver App Bar with Collapsing Effect",
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
return MaterialApp(
  home: Scaffold(
    body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 200.0,
          flexibleSpace: const FlexibleSpaceBar(
            title: Text('Sliver App Bar'),
            background: Image(
              image: AssetImage('assets/background_image.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SliverList(
          delegate: SliverChildListDelegate(
            <Widget>[
              ListTile(title: Text('Item 1')),
              ListTile(title: Text('Item 2')),
              // Add more list items here
            ],
          ),
        ),
      ],
    ),
  ),
);

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
