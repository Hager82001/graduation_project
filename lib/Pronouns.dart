import 'package:flutter/material.dart';
import 'package:graduation_project/MainScreen.dart';
import 'ButtonOfWord.dart';
import 'DataClass.dart';

class Pronouns extends StatefulWidget {
  static const String routeName='Pronouns';

  @override
  State<Pronouns> createState() => _PronounsState();
}

class _PronounsState extends State<Pronouns> {
  List<DataClass> buttonsOfPronous=[
    DataClass(pathOfPhoto: 'assets/pronouns/I_17530.png', word: 'أنا'),
    DataClass(pathOfPhoto: 'assets/main/I_17986.png', word: 'أنا'),
    DataClass(pathOfPhoto: 'assets/pronouns/you_17983.png', word: 'أنتم'),
    DataClass(pathOfPhoto: 'assets/pronouns/you_17981.png', word: 'أنتن'),
    DataClass(pathOfPhoto: 'assets/pronouns/you_17523.png', word: 'أنت'),
    DataClass(pathOfPhoto: 'assets/pronouns/you_17523.png', word:'أنتِ'),
    DataClass(pathOfPhoto: 'assets/pronouns/they_17711.png', word: 'هن'),
    DataClass(pathOfPhoto: 'assets/pronouns/they_17713.png', word: 'هم'),
    DataClass(pathOfPhoto: 'assets/pronouns/they_23592.png', word: 'هما'),
    DataClass(pathOfPhoto: 'assets/pronouns/she_17709.png', word: 'هى'),
    DataClass(pathOfPhoto: 'assets/pronouns/he_17381.png', word: 'هو'),
    DataClass(pathOfPhoto: 'assets/pronouns/We_32634.png', word: 'نحن'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        itemBuilder: getWordWidgetByIndex,
        itemCount: buttonsOfPronous.length,
      ),
    );
  }

  ButtonOfWord getWordWidgetByIndex(BuildContext context, int index) {
    return ButtonOfWord(Data: buttonsOfPronous[index], onButtonClick:onDigitClick,);
  }

  void onDigitClick(DataClass buttonText) {
    setState(() {
      MainScreen.word +=buttonText.word ;
    });
  }
}