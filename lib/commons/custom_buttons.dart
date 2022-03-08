import "package:flutter/material.dart";

class RoundedButton extends StatelessWidget {

  final Text title;
  final Color color;
  final Color textColor;

  const RoundedButton({Key? key,
    required this.title,
    required this.color,
    required this.textColor,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: title,
      onPressed: (){},
      color: color,
      textColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      )
    );
  }
}
