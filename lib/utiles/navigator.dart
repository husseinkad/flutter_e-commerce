import 'package:flutter/material.dart';


push(context, page){
  return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page));
}

pushReplacement(context, page){
  return Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => page));
}