import 'package:flutter/material.dart';
import 'ButtonOfWord.dart';
import 'DataClass.dart';
import 'MainScreen.dart';

class Verbs extends StatefulWidget {
  static const String routeName='verbs';

  @override
  State<Verbs> createState() => _ActionState();
}

class _ActionState extends State<Verbs> {
  List<DataClass> actions=[
    DataClass(pathOfPhoto: 'assets/action/carry_7853.png', word: 'يحمل'),
    DataClass(pathOfPhoto: 'assets/action/come_49188.png', word: 'يأتي'),
    DataClass(pathOfPhoto: 'assets/action/Draw_31882.png', word: 'يرسم'),
    DataClass(pathOfPhoto: 'assets/action/drink_17213.png', word: 'يشرب'),
    DataClass(pathOfPhoto: 'assets/action/eat_17361.png', word: 'يأكل'),
    DataClass(pathOfPhoto: 'assets/action/get_49193.png', word: 'يحصل على'),
    DataClass(pathOfPhoto: 'assets/action/give_49211.png', word: 'يعطي'),
    DataClass(pathOfPhoto: 'assets/action/go_49199.pngg', word: 'يذهب'),
    DataClass(pathOfPhoto: 'assets/action/Hear , To_4756.png', word: 'يسمع'),
    DataClass(pathOfPhoto: 'assets/action/open_17700.png', word: 'يفتح'),
    DataClass(pathOfPhoto: 'assets/action/paint_44828.png', word: 'يلون'),
    DataClass(pathOfPhoto: 'assets/action/play_20137.png', word: 'يلعب'),
    DataClass(pathOfPhoto: 'assets/action/put_49205.png', word: 'يضع'),
    DataClass(pathOfPhoto: 'assets/action/share_19381.png', word: 'يشارك'),
    DataClass(pathOfPhoto: 'assets/action/sleep_17379.png', word: 'ينام'),
    DataClass(pathOfPhoto: 'assets/action/stand_15182.png', word: 'يقف'),
    DataClass(pathOfPhoto: 'assets/action/standing up after ruku_7649.png', word: 'الوقوف بعد الركوع'),
    DataClass(pathOfPhoto: 'assets/action/study_17395.png', word: 'يدرس'),
    DataClass(pathOfPhoto: 'assets/action/Talk_30920.png', word: 'يتكلم'),
    DataClass(pathOfPhoto: 'assets/action/wake up_18669.png', word: 'يستيقظ'),
    DataClass(pathOfPhoto: 'assets/action/want_49208.png', word: 'يريد'),
    DataClass(pathOfPhoto: 'assets/action/watch television_17524.png', word: 'يشاهد التلفاز'),

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
        itemCount: actions.length,
      ),
    );
  }

  ButtonOfWord getWordWidgetByIndex(BuildContext context, int index) {
    return ButtonOfWord(Data: actions[index], onButtonClick:onDigitClick,);
  }

  void onDigitClick(DataClass buttonText) {
    setState(() {
      MainScreen.word +=buttonText.word ;
    });
  }
}
