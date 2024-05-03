import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String pathOfPhoto;
  String nameOfCategory;

  Category(this.pathOfPhoto, this.nameOfCategory);

  @override
  Widget build(BuildContext context) {
    return

      Column(
        children: [Image.asset('${pathOfPhoto}'), Text('${nameOfCategory}')],
      );
  }


  }