import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'QuizQuestion .dart';

class flutterIcone extends StatefulWidget {
  const flutterIcone({Key? key}) : super(key: key);

  @override
  State<flutterIcone> createState() => _KOState();
}

class _KOState extends State<flutterIcone> {
  late VideoPlayerController _videoPlayerController;
  late CustomVideoPlayerController _customVideoPlayerController;
  late CustomVideoPlayerWebController _customVideoPlayerWebController;
  final CustomVideoPlayerSettings _customVideoPlayerSettings =
      const CustomVideoPlayerSettings(showSeekButtons: true);
  final CustomVideoPlayerWebSettings _customVideoPlayerWebSettings =
      CustomVideoPlayerWebSettings(
    src: longVideo,
  );

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset(
      longVideo,
    )..initialize().then((value) => setState(() {}));
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: _videoPlayerController,
      customVideoPlayerSettings: _customVideoPlayerSettings,
      additionalVideoSources: {
        "720p": _videoPlayerController,
      },
    );
    _customVideoPlayerWebController = CustomVideoPlayerWebController(
      webVideoPlayerSettings: _customVideoPlayerWebSettings,
    );
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 70),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Text(
                                  " how \n to use \n Flutter Icon",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 30,
                                ),
                                child: Image.asset(
                                  'assets/fluttericon.png',
                                  width: 160,
                                  height: 160,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  height: 160,
                  width: 370,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.teal,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              style: ElevatedButton.styleFrom(
                                shape: CircleBorder(), // To make it circular
                                padding: EdgeInsets.all(
                                    5), // To set the padding around the icon
                                primary: Colors
                                    .white, // Background color of the button
                              ),
                              child: const Icon(
                                Icons.navigate_before,
                                size: 50,
                                color: Colors.teal,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('''this video demostrat 
how to use a Flutter Icon''',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white)),
                          ],
                        ),
                      ),
                    )),
                    //SizedBox(height: 30,),
                    /*Container(
                height: 220,
                width: 370,
                decoration: BoxDecoration(border: Border.all(width: 3,color:Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Colors.deepPurpleAccent
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('A container first surrounds the child with padding (inflated by any borders present in the decoration) and then applies additional constraints to the padded extent (incorporating the width and height as constraints, if either is non-null). The container is then surrounded by additional empty space described from the margin',
                    style: TextStyle(color: Colors.white,height: 1.5,fontWeight: FontWeight.bold,fontSize: 15.5),
                  ),
                ),
              ),*/
                    SizedBox(height: 30),
                    Container(
                      margin: EdgeInsets.only(right: 10, left: 10),
                      child: Column(
                        children: [
                          kIsWeb
                              ? Expanded(
                                  child: CustomVideoPlayerWeb(
                                    customVideoPlayerWebController:
                                        _customVideoPlayerWebController,
                                  ),
                                )
                              : CustomVideoPlayer(
                                  customVideoPlayerController:
                                      _customVideoPlayerController,
                                ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Center(
                        child: Text(
                            "wanna test your knowledg \n why not taking a quiz",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white))),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Column(
                        children: [
                          Container(
                            child: QuizQuestion(
                              questionText: 'What advantage do Flutters icon widgets offer in terms of customization?',
                              answerOptions: [
                                'Icons cannot be customized in Flutter.',
                                'Developers can only change the color of icons.',
                                'Icons can be animated but not altered in appearance',
                                'Developers can adjust the size, color, and opacity of icons'
                              ],
                              correctAnswer: 'Developers can adjust the size, color, and opacity of icons',
                              textbuttonColor: Colors.teal,
                              onAnswerSelected: (bool isCorrect) {
                                print(isCorrect ? 'Correct!' : 'Wrong!');
                                // Handle the selected answer here
                              },
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: QuizQuestion(
                              questionText: 'What is Flutters primary purpose for providing icons as a widget?',
                              answerOptions: [
                                'To offer a consistent set of scalable icons across platforms',
                                'To solely enhance the visual appeal of the app',
                                'To replace all text-based elements with graphical symbols',
                                'To reduce app loading time by eliminating textual content'
                              ],
                              correctAnswer: 'To offer a consistent set of scalable icons across platforms',
                              textbuttonColor: Colors.teal,
                              onAnswerSelected: (bool isCorrect) {
                                print(isCorrect ? 'Correct!' : 'Wrong!');
                                // Handle the selected answer here
                              },
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            child: QuizQuestion(
                              questionText: 'How does Flutter handle the display of icons on different devices or screen resolutions?',
                              answerOptions: [
                                'By downloading icons dynamically from online repositories',
                                'By using fixed-size icons for all screen resolutions',
                                'By automatically adjusting the size and resolution of icons',
                                'By allowing developers to manually resize icons for each device'
                              ],
                              correctAnswer: 'By automatically adjusting the size and resolution of icons',
                              textbuttonColor: Colors.teal,
                              onAnswerSelected: (bool isCorrect) {
                                print(isCorrect ? 'Correct!' : 'Wrong!');
                                // Handle the selected answer here
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String longVideo = "assets/fluttericon.mp4";
