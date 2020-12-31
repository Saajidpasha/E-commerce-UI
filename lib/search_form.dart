import 'package:flutter/material.dart';


class SearchFormField{


  
  static Widget buildSearchFormField(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(bottom: 35),
      padding: EdgeInsets.all(8),
      width: size.width * 0.9,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: TextFormField(
        cursorColor: Colors.black,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "Search",
            hintStyle: Theme.of(context).textTheme.subtitle1,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none),
      ),
    );
  }

}