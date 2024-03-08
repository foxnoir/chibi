import 'package:flutter/material.dart';

import 'package:chibi/core/theme/colours.dart';

class RoundGradientButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const RoundGradientButton(
      {Key? key, required this.title, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: Colours.primaryG,
                begin: Alignment.centerLeft,
                end: Alignment.centerRight),
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 2, offset: Offset(0, 2))
            ]),
        child: MaterialButton(
          minWidth: double.maxFinite,
          height: 50,
          onPressed: onPressed,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          textColor: Colours.primaryColor1,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colours.whiteColor,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
