import 'package:flutter/material.dart';
import 'DataClass.dart';
typedef OnWordButtonClick =void Function(DataClass);
class ButtonOfWord extends StatelessWidget {
  OnWordButtonClick onButtonClick ;
  DataClass Data ;
  ButtonOfWord({required this.Data, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor:MaterialStateProperty.all(Colors.deepOrangeAccent),
          padding: MaterialStateProperty.all(EdgeInsets.all(20))
        ),
        onPressed: (){
          onButtonClick(Data);
        },
        child: Column(
          children: [
            Image.asset('${Data.pathOfPhoto}'),
            Text('${Data.word}')
          ],
        ));
  }
}
