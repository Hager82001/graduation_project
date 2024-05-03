import 'package:flutter/material.dart';

class Convert extends StatelessWidget {
  Widget buttonWidget;
  Convert(this.buttonWidget);

  @override
  Widget build(BuildContext context) {
    return buttonWidget;
  }

}

/*List<Widget>mainButton = [
      ElevatedButton(onPressed: () {
        Navigator.pushNamed(context, Conversion.routeName);
      },
        child: Category("assets/main/Chat_47694.png", 'المحادثة'),),
      ElevatedButton(onPressed: () {
        Navigator.pushNamed(context, Pronouns.routeName);
      },
          child: Category("assets/main/I_44446.png", 'الضمائر')),
      ElevatedButton(onPressed: () {},
          child: Category("assets/main/food_16495.png", 'الطعام')),
      ElevatedButton(onPressed: () {},
          child: Category("assets/main/Snacks_6260.png", 'سناكس')),

    ];*/