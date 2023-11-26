import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'AppBarC.dart';
import 'ButtonC.dart';
import 'Cardss.dart';
import 'DDM.dart';
import 'GridC.dart';
import 'Singlev.dart';
import 'listve.dart';
import 'navv.dart';
import 'randc.dart';
import 'stackk.dart';

class TakeCode extends StatelessWidget {
  const TakeCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(4, 1, 46, 1),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                height: 150,
                child: Row(children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const FaIcon(
                      FontAwesomeIcons.angleLeft,
                      color: Color.fromRGBO(225, 215, 0, 1),
                      size: 60,
                    ),
                  ),
                  const Text(
                    "Ready Widgets",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 1200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Column(children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AppBarC(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          width: 170,
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(4, 1, 46, 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(33)),
                            border: Border.all(
                              color: const Color.fromRGBO(255, 215, 0, 1),
                              width: 4,
                            ),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30)),
                                child: Image.asset(
                                  'assets/image1.jfif',
                                  fit: BoxFit.fill,
                                  height: 135,
                                ),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const AppBarC(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "AppBar",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                                  const FaIcon(
                                    FontAwesomeIcons.angleDoubleRight,
                                    color: Color.fromRGBO(225, 215, 0, 1),
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const GridC(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 170,
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(4, 1, 46, 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(33)),
                            border: Border.all(
                              color: const Color.fromRGBO(255, 215, 0, 1),
                              width: 4,
                            ),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30)),
                                child: Image.asset(
                                  alignment: Alignment.topCenter,
                                  'assets/image2.png',
                                  width: double.infinity,
                                  height: 135,
                                ),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const GridC(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Grid",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                                  const FaIcon(
                                    FontAwesomeIcons.angleDoubleRight,
                                    color: Color.fromRGBO(225, 215, 0, 1),
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ButtonC(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          width: 170,
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(4, 1, 46, 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(33)),
                            border: Border.all(
                              color: const Color.fromRGBO(255, 215, 0, 1),
                              width: 4,
                            ),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30)),
                                child: Image.asset(
                                  'assets/image3.jpg',
                                  fit: BoxFit.fill,
                                  height: 135,
                                ),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const ButtonC(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Buttons",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                                  const FaIcon(
                                    FontAwesomeIcons.angleDoubleRight,
                                    color: Color.fromRGBO(225, 215, 0, 1),
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Cardss(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 170,
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(4, 1, 46, 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(33)),
                            border: Border.all(
                              color: const Color.fromRGBO(255, 215, 0, 1),
                              width: 4,
                            ),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30)),
                                child: Image.asset(
                                  alignment: Alignment.topCenter,
                                  'assets/image4.jpg',
                                  width: double.infinity,
                                  height: 135,
                                ),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Cardss(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Cards",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                                  const FaIcon(
                                    FontAwesomeIcons.angleDoubleRight,
                                    color: Color.fromRGBO(225, 215, 0, 1),
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DDM(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          width: 170,
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(4, 1, 46, 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(33)),
                            border: Border.all(
                              color: const Color.fromRGBO(255, 215, 0, 1),
                              width: 4,
                            ),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30)),
                                child: Image.asset(
                                  'assets/image5.jpg',
                                  fit: BoxFit.fill,
                                  height: 135,
                                ),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const DDM(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "DropDownMenu",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  const FaIcon(
                                    FontAwesomeIcons.angleDoubleRight,
                                    color: Color.fromRGBO(225, 215, 0, 1),
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const listve(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 170,
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(4, 1, 46, 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(33)),
                            border: Border.all(
                              color: const Color.fromRGBO(255, 215, 0, 1),
                              width: 4,
                            ),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30)),
                                child: Image.asset(
                                  'assets/image6.jpg',
                                  width: double.infinity,
                                  height: 135,
                                ),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const listve(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "ListView",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                                  const FaIcon(
                                    FontAwesomeIcons.angleDoubleRight,
                                    color: Color.fromRGBO(225, 215, 0, 1),
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const navv(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          width: 170,
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(4, 1, 46, 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(33)),
                            border: Border.all(
                              color: const Color.fromRGBO(255, 215, 0, 1),
                              width: 4,
                            ),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30)),
                                child: Image.asset(
                                  'assets/image7.jpg',
                                  fit: BoxFit.fill,
                                  height: 135,
                                ),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const navv(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Navigator",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                                  const FaIcon(
                                    FontAwesomeIcons.angleDoubleRight,
                                    color: Color.fromRGBO(225, 215, 0, 1),
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const randc(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 170,
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(4, 1, 46, 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(33)),
                            border: Border.all(
                              color: const Color.fromRGBO(255, 215, 0, 1),
                              width: 4,
                            ),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30)),
                                child: Image.asset(
                                  'assets/image8.jpg',
                                  alignment: Alignment.topCenter,
                                  width: double.infinity,
                                  height: 135,
                                ),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const randc(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Row&Column",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  const FaIcon(
                                    FontAwesomeIcons.angleDoubleRight,
                                    color: Color.fromRGBO(225, 215, 0, 1),
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Singlev(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 10),
                          width: 170,
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(4, 1, 46, 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(33)),
                            border: Border.all(
                              color: const Color.fromRGBO(255, 215, 0, 1),
                              width: 4,
                            ),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30)),
                                child: Image.asset(
                                  'assets/image9.jfif',
                                  fit: BoxFit.fill,
                                  height: 135,
                                ),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Singlev(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "SingleChildScrollView",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11
                                      ),
                                    ),
                                  ),
                                  const FaIcon(
                                    FontAwesomeIcons.angleDoubleRight,
                                    color: Color.fromRGBO(225, 215, 0, 1),
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const stackk(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 170,
                          height: 200,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(4, 1, 46, 1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(33)),
                            border: Border.all(
                              color: const Color.fromRGBO(255, 215, 0, 1),
                              width: 4,
                            ),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30)),
                                child: Image.asset(
                                  'assets/image10.jpg'
                                      '',
                                  alignment: Alignment.topCenter,
                                  width: double.infinity,
                                  height: 135,
                                ),
                              ),
                              Row(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const stackk(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Stack",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                                  const FaIcon(
                                    FontAwesomeIcons.angleDoubleRight,
                                    color: Color.fromRGBO(225, 215, 0, 1),
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        )
    );
  }
}
