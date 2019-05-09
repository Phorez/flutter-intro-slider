import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
//import 'package:intro_slider_example/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IntroScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  IntroScreenState createState() => new IntroScreenState();
}

// Custom config
class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();
  }

  void onDonePress() {
//     Do what you want
//    Navigator.push(
//      context,
//      MaterialPageRoute(builder: (context) => HomeScreen()),
//    );
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xffD02090),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xffD02090),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xffD02090),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // List slides
      slides: this.slides,

      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: Color(0x33000000),
      highlightColorSkipBtn: Color(0xff000000),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0x33000000),
      highlightColorDoneBtn: Color(0xff000000),

      // Dot indicator
      colorDot: Color(0x33D02090),
      colorActiveDot: Color(0xffD02090),
      sizeDot: 13.0,

      // Show or hide status bar
      shouldHideStatusBar: true,
    );
  }
}

//Default config
//class IntroScreenState extends State<IntroScreen> {
//  List<Slide> slides = new List();
//
//  @override
//  void initState() {
//    super.initState();
//
//    slides.add(
//      new Slide(
//        title: "ERASER",
//        description: "Allow miles wound place the leave had. To sitting subject no improve studied limited",
//        pathImage: "images/photo_eraser.png",
//        backgroundColor: Color(0xfff5a623),
//      ),
//    );
//    slides.add(
//      new Slide(
//        title: "PENCIL",
//        description: "Ye indulgence unreserved connection alteration appearance",
//        pathImage: "images/photo_pencil.png",
//        backgroundColor: Color(0xff203152),
//      ),
//    );
//    slides.add(
//      new Slide(
//        title: "RULER",
//        description:
//        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
//        pathImage: "images/photo_ruler.png",
//        backgroundColor: Color(0xff9932CC),
//      ),
//    );
//  }
//
//  void onDonePress() {
//    // Do what you want
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new IntroSlider(
//      slides: this.slides,
//      onDonePress: this.onDonePress,
//    );
//  }
//}
