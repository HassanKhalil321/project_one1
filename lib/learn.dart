import 'package:flutter/material.dart';
import 'KO.dart';
import 'column.dart';
import 'icons.dart';
import 'row.dart';
import 'elevatedButton.dart';
import 'flutterIcon.dart';
import 'main.dart';

class Learn extends StatelessWidget {
  const Learn({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        backgroundColor: Color.fromRGBO(23, 15, 84, 1.0),
        body: SingleChildScrollView(
            child: Column(
          children: [

            SizedBox(
              height: 100,
            ),
            Container(
            child: Center(child: Text("LET'S LEARN! \n CHOOSE YOUR TOPIC",
                style: TextStyle(fontSize: 25,color: Color.fromRGBO(23, 15, 84, 1.0),),textAlign: TextAlign.center)),
              width: 350,
              height: 150,

              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color.fromRGBO(255, 205, 16, 1.0), width: 5.0),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 50,bottom: 50),
              child: Container(
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight:Radius.circular(30) ),
                
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=>KO())
                          );},
                          child: Container(
                            child:
                            Column(
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                                        child: Image.asset("assets/container_flutter-removebg-preview.png" ,width: double.infinity,height: 150,fit: BoxFit.cover,))),
                                Padding(
                                  padding: const EdgeInsets.only(top: 13),
                                  child: Text("Container",style: TextStyle(fontSize: 20,color:Colors.white,
                                      fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                    child:const Icon(Icons.navigate_next, size: 30,color: Colors.white,)
                                ),
                              ],
                            ),
                            height: 230,
                            width: 170,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3), // Shadow color
                                  spreadRadius: 2, // Spread radius
                                  blurRadius: 4, // Blur radius
                                  offset: Offset(0, 3), // Offset
                                ),
                              ],
                              /*gradient: LinearGradient(
                                colors: [Colors.indigoAccent,Colors.purple],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),*/
                              color: Colors.deepPurpleAccent,
                              border: Border.all(width: 3, color: Colors.white),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=>column())
                          );},
                          child:
                        Container(
                          child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                                      child: Image.asset("assets/column.png" ,width: double.infinity,height: 150,fit: BoxFit.cover,))),
                              Padding(
                                padding: const EdgeInsets.only(top: 13),
                                child: Text("Column",style: TextStyle(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: const Icon(Icons.navigate_next, size: 30,color: Colors.white,),
                              ),
                            ],
                          ),
                          height: 230,
                          width: 170,
                          decoration: BoxDecoration(
                            /*gradient: LinearGradient(
                              colors: [Colors.cyan,Colors.yellow],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),*/
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 4, // Blur radius
                                offset: Offset(0, 3), // Offset
                              ),
                            ],
                            color: Color.fromRGBO(34, 155, 230, 1.0),

                            border: Border.all(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(12),

                          ),
                        ),),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=>icons())
                          );},
                          child:
                        Container(
                          child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                                      child: Image.asset("assets/icons.png" ,width:double.infinity,height: 150,))),
                              Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Text("Icons",style: TextStyle(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: const Icon(Icons.navigate_next, size: 30,color: Colors.white,),
                                ),
                              ),
                            ],
                          ),
                          height: 230,
                          width: 170,
                          decoration: BoxDecoration(
                            /*gradient: LinearGradient(
                              colors: [Colors.cyanAccent,Colors.teal],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),*/
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 4, // Blur radius
                                offset: Offset(0, 3), // Offset
                              ),
                            ],
                            color: Color.fromRGBO(242, 162, 73, 1.0),
                            border: Border.all(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),),
                        GestureDetector(
                          onTap: (){Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=>row())
                          );},
                          child:
                        Container(
                          child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                                      child: Image.asset("assets/row.png" ,width: double.infinity,height: 150,fit: BoxFit.cover,))
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Text("Row",style: TextStyle(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: const Icon(Icons.navigate_next, size: 30,color: Colors.white,),
                                ),
                              ),
                            ],
                          ),
                          height: 230,
                          width: 170,
                          decoration: BoxDecoration(
                            /*gradient: LinearGradient(
                              colors: [Colors.pinkAccent,Colors.orangeAccent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),*/
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 4, // Blur radius
                                offset: Offset(0, 3), // Offset
                              ),
                            ],
                            color: Colors.pink,
                            border: Border.all(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),

                        ),),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=>elevatedButton())
                          );},
                          child:
                        Container(
                          child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                                      child: Image.asset("assets/ElevatedButton-removebg-preview.png" ,width: double.infinity,height: 130,
                                        ))
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text("Elevated Button",style: TextStyle(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: const Icon(Icons.navigate_next, size: 30,color: Colors.white,),
                                ),
                              ),
                            ],
                          ),
                          height: 230,
                          width: 170,
                          decoration: BoxDecoration(
                           /* gradient: LinearGradient(
                              colors: [Colors.pinkAccent,Colors.indigoAccent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),*/
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 4, // Blur radius
                                offset: Offset(0, 3), // Offset
                              ),
                            ],
                            color: Color.fromRGBO(66, 96, 186, 1.0),
                            border: Border.all(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),),

                        GestureDetector(
                          onTap: (){Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=>flutterIcone())
                          );},
                          child:
                        Container(
                          child: Column(
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                                      child: Image.asset("assets/fluttericon.png" ,width: double.infinity,height: 130,
                                      ))
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text("Flutter Icon",style: TextStyle(fontSize: 20,color:Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: const Icon(Icons.navigate_next, size: 30,color: Colors.white,),
                                ),
                              ),
                            ],
                          ),
                          height: 230,
                          width: 170,
                          decoration: BoxDecoration(
                            /*gradient: LinearGradient(
                              colors: [Colors.cyanAccent,Colors.lightGreenAccent],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),*/
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 4, // Blur radius
                                offset: Offset(0, 3), // Offset
                              ),
                            ],
                            color: Colors.teal,
                            border: Border.all(width: 3, color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

