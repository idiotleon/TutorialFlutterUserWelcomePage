import 'package:flutter/material.dart';
import 'package:tutorial_flutter_welcome_page/components/container_field_text.dart';
import 'package:tutorial_flutter_welcome_page/constants.dart';

class FieldInputRounded extends StatelessWidget{
    final String hintText;
    final IconData icon;
    final ValueChanged<String> onChanged;
    const FieldInputRounded({
      Key key,
      this.hintText,
      this.icon = Icons.person,
      this.onChanged,
    }) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return ContainerTextField(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon, 
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}