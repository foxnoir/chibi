import 'package:flutter/material.dart';
import 'package:chibi/core/theme/colours.dart';

enum RoundButtonType { primaryBG, secondaryBG }

class RoundButton extends StatelessWidget {
  final String title;
  final RoundButtonType type;
  final Function() onPressed;

  const RoundButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.type = RoundButtonType.secondaryBG})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: type == RoundButtonType.secondaryBG
                  ? Colours.secondaryG
                  : Colours.primaryG,
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        textColor: Colours.primaryColor1,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 11,
            color: Colours.whiteColor,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
