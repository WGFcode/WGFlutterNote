// ignore_for_file: file_names

/*
1.AppBar组件包含四部分
leading:Widget 左侧组件(可以设置返回按钮之列的)
title:Widget 是中间组件
actions:List<Widget>? 右侧组件列表(可以设置按钮图标之类的)
bottom:PreferredSize 是底部组件

2.AppBar高度
AppBar实现了PreferredSizeWidget，里面有抽象preferredSize的get方法，AppBar实现了该抽象的get方法
来确定高度的。AppBar 组件的高度就是 toolbarHeight 和 bottom 组件高度之和
AppBar高度 = (toolbarHeight ?? kToolbarHeight(56)) + (bottomHeight ?? 0))

3.属性介绍
centerTitle:bool  控制 title 是否居中显示
toolbarOpacity/bottomOpacity:double？ 控制标题栏和底栏的透明度 取值范围 [0 ~ 1]
titleSpacing:double? 控制标题栏和区域左侧leading组件的间隔，Material风格下默认是16，若想消除间隔，可以设置为0即可
leadingWidth:double? 控制左侧 leading 的区域宽度，默认情况下是56，呈正方形
flexibleSpace: 在源码实现的过程中，该组件将通过 Stack 叠放在 AppBar 下方

4.AppBar样式属性
shape: 设置 AppBar 形状
shadowColor: 设置阴影颜色
elevation: 阴影的深度，(通过去除阴影、设置背景色，也可以很轻松地摆脱 Material 风格)
backgroundColor: 背景色
iconTheme: 图标样式
actionsIconTheme: 右侧图标样式
titleTextStyle: 标题文字样式
toolbarTextStyle: 工具条文字样式
systemOverlayStyle: 设置状态栏的颜色

5.通过了 iconTheme 来配置 AppBar 中的默认图标主题，这样如果存在多个按钮，方便统一配置，
避免一个个设置的麻烦。actionsIconTheme 的图标样式优先作用于 actions 属性中的组件。

6.使用细节
(1)AppBar 在构造时可以传入 automaticallyImplyLeading 属性，
用于控制是否在 leading 为 null 时，根据场景自动添加某些图标: 
比如 Scafflod 中 drawer 属性非空时，会自动提供 leading，点击时响应事件打开 drawer；
(2)当跳转界面时，如果使用了 AppBar 并且未提供 leading，会自动添加返回按钮。
如果不想启用这个功能，将 automaticallyImplyLeading 置为 false 即可
*/

import 'package:flutter/material.dart';

class WGAppBarWidge extends StatelessWidget {
  const WGAppBarWidge({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo",
            style: TextStyle(fontSize: 18, color: Colors.white)),
        leading: const Text("返回",
            style: TextStyle(fontSize: 16, color: Colors.black)),
        actions: const [
          //设置右侧按钮
          Text("更多", style: TextStyle(fontSize: 16, color: Colors.black)),
          Text("删除", style: TextStyle(fontSize: 16, color: Colors.black))
        ],
        // backgroundColor: Colors.white,  //设置背景色，这样就可以不用MaterialApp风格了
        centerTitle: true, //设置导航栏文字居中显示
        toolbarHeight: 56, //设置导航条高度(如果不设置默认就是56)
        bottom: const PreferredSize(
          //设置导航条底部展示的组件
          child: Text("我是bottom"),
          preferredSize: Size.fromHeight(20), //设置bottomHeight
        ),
      ),
      body: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          color: Colors.white,
          child: const Text("AppBar 组件",
              style: TextStyle(fontSize: 16, color: Colors.black))),
    );
  }
}
