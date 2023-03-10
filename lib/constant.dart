import 'package:flutter/material.dart';


const kTextFieldDecoration =  InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter total miles driven',
  hintStyle: TextStyle(
    color: Colors.blueGrey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0),),
    borderSide: BorderSide.none,
  ),
);