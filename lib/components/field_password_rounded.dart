import 'package:flutter/material.dart';
import 'package:tutorial_flutter_welcome_page/components/container_field_text.dart';
import 'package:tutorial_flutter_welcome_page/constants.dart';

class FieldPasswordRounded extends StatelessWidget{
  final ValueChanged<String> onChanged;
  const FieldPasswordRounded({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ContainerTextField(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}