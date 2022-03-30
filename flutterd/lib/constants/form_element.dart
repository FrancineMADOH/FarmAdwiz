import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final textinputcontroller;
  final initialvalue;
  final inputdec;
  final textstyle;
  final obscure;
  final icon;
  final inputcolor;
  final validator;

  const Textfield(
      {Key? key,
      this.icon,
      this.validator,
      this.initialvalue,
      this.inputcolor,
      this.inputdec,
      this.obscure,
      this.textinputcontroller,
      this.textstyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField();
  }
}

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('');
    //return DropdownButtonFormField(items: items, onChanged: onChanged)
  }
}
