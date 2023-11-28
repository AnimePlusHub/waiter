import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DigitField extends StatefulWidget{
  final void Function(String) onCodeChanged;
  DigitField({required this.onCodeChanged});

  @override
  State<StatefulWidget> createState() => _digitFieldState();
}

class _digitFieldState extends State<DigitField>{
  late List<TextEditingController> _controllers;
  final count = 6;
  @override
  void initState() {
    super.initState();
    _controllers = List.generate(count, (index) => TextEditingController());
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(count, (index) => buildDigitTextField(index)),
    );
  }
  Widget buildDigitTextField(int index){
      return Container(
        width: 40,
        child: TextField(
          controller: _controllers[index],
          maxLength: 1,
          keyboardType: TextInputType.number,

          onChanged: (value){
            print("test code $value");
            print("test index $index");
            setState(() {
              widget.onCodeChanged(getCode());
              if(value.isNotEmpty && index < count-1){
                _controllers[index++].text = value;
                FocusScope.of(context).nextFocus();
              }
              if(value.isEmpty && index >0){
                _controllers[index--].text = '';
                FocusScope.of(context).previousFocus();
              }
            });

          },
          decoration: InputDecoration(
            counter: Offstage(),
            hintText: ' ',
            border: OutlineInputBorder(),
          ),
        ),
      );
  }
  String getCode(){
    return _controllers.map((e) => e.text).join();
  }
  @override
  void dispose() {
    _controllers.forEach((c)=>c.dispose());
    super.dispose();
  }
}