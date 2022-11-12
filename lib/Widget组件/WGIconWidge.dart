import 'package:flutter/material.dart';

/*
Icon图标组件
1.Icon图标不具备交互性
2.也可以自定义图标
(1)可以去https://icomoon.io/app/#/select下载需要的图标，然后在项目目录中创建一个fonts文件夹
(2)然后将下载的图标的ttf格式放到fonts文件夹下
*/
class WGIconWidge extends StatelessWidget {
  const WGIconWidge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.people,
          color: Colors.blue, //设置图标颜色
          size: 40, //设置大小
          semanticLabel: "哈哈", //语义标签,此标签不会显示在UI中
          textDirection: TextDirection.ltr, //icon文字方向
          // shadows: [
          //   Shadow()
          // ],
        ),
        Icon(
          Icons.favorite,
          color: Colors.red,
          size: 20,
          semanticLabel: "哈哈",
          textDirection: TextDirection.ltr,
          // shadows: [
          //   Shadow()
          // ],
        ),
        Icon(IconData(0xe9a0, fontFamily: "WGIcon")) //自定义图标
      ],
    );
  }
}
