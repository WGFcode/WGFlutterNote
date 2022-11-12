// ignore: file_names
import 'package:flutter/material.dart';

class WGTextWeight extends StatelessWidget {
  const WGTextWeight({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Text(
        "我是一行文本我是一行文本我是一行文本我是一行文本我是一行文本我是一行文本我是一行文本我是一行文本我是一行文本我是一行文本我是一行文本我是一行文本",
        style: TextStyle(
            fontSize: 20, //字体大小
            color: Colors.black, //字体颜色
            backgroundColor: Colors.yellow, //背景颜色
            fontWeight: FontWeight.w800, //设置字体的宽度
            fontStyle: FontStyle.italic, //是否使用倾斜字体
            letterSpacing: 0, //设置字与字之间的间距（设置为负值，会使文字更接近）
            wordSpacing: 10, //暂时没明显变化
            textBaseline: TextBaseline.ideographic));
  }
}
