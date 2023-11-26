import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class DDM extends StatelessWidget {
  const DDM({super.key});

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
                      'DropDownMenu',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 215, 0, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 33,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
                width: double.infinity,
                height: 2400,
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
                    const Text("1- Simple Dropdown Menu",
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
                      child: const  SelectableText(
                        '''
String dropdownValue = 'One';

DropdownButton<String>(
  value: dropdownValue,
  onChanged: (String? newValue) {
    setState(() {
      dropdownValue = newValue!;
    });
  },
  items: <String>['One', 'Two', 'Three', 'Four']
      .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
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
                    const Text("2- Dropdown Menu with Icons",
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
                        '''
String dropdownValue = 'One';

DropdownButton<String>(
  value: dropdownValue,
  onChanged: (String? newValue) {
    setState(() {
      dropdownValue = newValue!;
    });
  },
  items: <String>['One', 'Two', 'Three', 'Four']
      .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Row(
        children: [
          Icon(Icons.circle, color: Colors.blue),
          SizedBox(width: 8),
          Text(value),
        ],
      ),
    );
  }).toList(),
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
                    const Text("3- Dropdown Menu with Customized Items",
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
String dropdownValue = 'One';

DropdownButton<String>(
  value: dropdownValue,
  onChanged: (String? newValue) {
    setState(() {
      dropdownValue = newValue!;
    });
  },
  items: <String>['One', 'Two', 'Three', 'Four']
      .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        child: Text(
          value,
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }).toList(),
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
