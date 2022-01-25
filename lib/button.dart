import 'package:flutter/material.dart';

typedef OnPressed=void Function( );

class Button extends StatelessWidget {
  Button({this.title,this.color, required this.onPressed});

  final Color? color;
  final String? title;
  final OnPressed onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:EdgeInsets.symmetric(vertical: 17.0),
        child:Material(
            color:color,
            borderRadius:BorderRadius.all(Radius.circular(30.0)),
            elevation:5.0,
            child:MaterialButton(
              onPressed:onPressed,
              minWidth:200.0,
              height:42.0,
              child:Text(title!,
                  style:TextStyle(
                    color:Colors.white,
                  )),
            )
        )
    );
  }
}
