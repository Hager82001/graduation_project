import 'package:flutter/material.dart';

import 'ButtonOfWord.dart';
import 'DataClass.dart';
import 'MainScreen.dart';

class Conversion extends StatefulWidget {
  static const String routeName='conversation';

  @override
  State<Conversion> createState() => _ConversionState();
}

class _ConversionState extends State<Conversion> {
  String text='';

  List<DataClass> buttonsOfConversion=[
    DataClass(pathOfPhoto: 'assets/conversation/hello_17422.png',word:'مرحباً'),
    DataClass(pathOfPhoto: 'assets/conversation/goodbye_17183.png',word: 'إلى اللقاء'),
    DataClass(pathOfPhoto: 'assets/conversation/Good_4651.png',word: 'هذا جيد'),
    DataClass(pathOfPhoto: 'assets/conversation/Bad_3205.png',word: 'هذا سىء'),
    DataClass(pathOfPhoto: 'assets/conversation/thanks_18169.png',word: 'شكراًٍ'),
    DataClass(pathOfPhoto: 'assets/conversation/Please tell me again_6395.png',word: 'لم أسمعك'),
    DataClass(pathOfPhoto: 'assets/conversation/yes_17011.png',word: 'أرجوك'),
    DataClass(pathOfPhoto: 'assets/conversation/silence_17222.png',word: 'هشش'),
    DataClass(pathOfPhoto: 'assets/conversation/Non Speaking_5159.png',word: 'لا أستطيع التحدث'),
    DataClass(pathOfPhoto: 'assets/conversation/no_16959.png',word: 'لاً'),
    DataClass(pathOfPhoto: 'assets/conversation/yes_17011.png',word: 'نعم'),

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
              itemCount: buttonsOfConversion.length,
            ),
    );
  }

  ButtonOfWord getWordWidgetByIndex(BuildContext context, int index) {
      return ButtonOfWord(Data: buttonsOfConversion[index], onButtonClick:onDigitClick ,);
    }

  void onDigitClick(DataClass buttonText) {
    setState(() {
      MainScreen.word +=buttonText.word ;
    });
  }
}



