import 'package:flutter/material.dart';

class Mytextfiled extends StatelessWidget{
  final controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // 具体实现生成
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: '请输入关键词',
        contentPadding: EdgeInsets.fromLTRB(15,5,10,5),
        hintStyle: TextStyle(
          height: 0
        ),
        suffixIcon: IconButton(
          icon: Icon(Icons.search, 
            color: Color.fromARGB(255, 40, 183, 163)
          ),
          onPressed: getTextval
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 211, 211, 211)),
          borderRadius: BorderRadius.all(Radius.circular(32.0))
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 211, 211, 211)),
          borderRadius: BorderRadius.all(Radius.circular(32.0))
        )
      ),
      style: TextStyle(
      ),
    );
  }
  void getTextval () {
    print('inputval ${controller.text}');
  }
}