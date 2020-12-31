import 'package:flutter/material.dart';


class ImageContainer{


  static Widget buildImageContainer(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height / 2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32)),
          image: DecorationImage(
              image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover)),
    );
  }

}