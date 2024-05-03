import 'package:flutter/material.dart';
import 'package:graduation_project/Conversion.dart';
import 'package:graduation_project/Convert.dart';
import 'package:graduation_project/Pronouns.dart';
import 'Category.dart';
import 'Verbs.dart';
class MainScreen extends StatefulWidget {
  static const String routeName='main screen';
  static String word='';
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    List<Widget>mainButton = [
      ElevatedButton(onPressed: () {
        Navigator.pushNamed(context, Conversion.routeName);
      },
        child: Category("assets/main/Chat_47694.png", 'المحادثة'),),
      ElevatedButton(onPressed: () {
        Navigator.pushNamed(context, Pronouns.routeName);
      },
          child: Category("assets/main/I_44446.png", 'الضمائر')),
      ElevatedButton(onPressed: () {
        Navigator.pushNamed(context, Pronouns.routeName);
      },
          child: Category("assets/main/verbs_17973.png", 'الأفعال')),
      ElevatedButton(onPressed: () {
        Navigator.pushNamed(context, Verbs.routeName);
      },
          child: Category("assets/main/food_16495.png", 'الطعام')),
      ElevatedButton(onPressed: () {},
          child: Category("assets/main/Snacks_6260.png", 'سناكس')),

    ];
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(child: Text('${MainScreen.word}',
                  style: TextStyle(color: Colors.black, fontSize: 30),)),
                IconButton(onPressed: () {
                  setState(() {
                    MainScreen.word = '';
                  });
                }, icon: Icon(Icons.delete_forever))
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              padding: EdgeInsets.all(20),
              scrollDirection: Axis.vertical,
              itemBuilder: (_, index) => Convert(mainButton[index]),
              itemCount: mainButton.length,
            ),
          )


        ],
      ),
    );
  }
/* void onDigitClick(DataClass buttonText) {
    setState(() {
      MainScreen.word += buttonText.word;
    });
  }*/

}
