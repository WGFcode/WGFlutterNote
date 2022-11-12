import 'package:flutter/material.dart';
/*
按钮类型
1. TextButton: 基础按钮(没有任何修饰的扁平化的)
2.ElevatedButton: 基础按钮(有圆角)
3.FloatingActionButton: 悬浮按钮
4.OutlineButton: 线框按钮(有边框的)
5.IconButton: 图标按钮
6.DropdownButton: 点击按钮弹出一个列表进行选择，选择一项后进行回显（需要回显数据的）
7.PopupMenuButton：点击按钮弹框列表(不需要回显数据的)
*/

class WGButtonWidge extends StatelessWidget {
  const WGButtonWidge({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _testElevatedButton(), //基础按钮
        _testFloatingActionButton(), //悬浮按钮
        _testIconButton(), //图标按钮
        _testOutlineButton(), //线框按钮
        _testPopupMenuButton(), //弹出菜单栏按钮
        _testTextButton(), //基础按钮（不加修饰的）
        _testDropdownButton() ////项目列表中选择的按钮
      ],
    );
  }

  //项目列表中选择的按钮
  Widget _testDropdownButton() {
    return DropdownButton(
      items: const [
        DropdownMenuItem(
          child: Text("111111"),
          value: "1111111",
        ),
        DropdownMenuItem(
          child: Text("222222"),
          value: "222222",
        ),
        DropdownMenuItem(
          child: Text("333333"),
          value: "333333",
        )
      ],
      onChanged: (value) {
        print("this value is $value");
      },
    );
  }

  //没有任何边框修饰的基础按钮
  Widget _testTextButton() {
    return TextButton(
      onPressed: () {
        print("点击了基础按钮");
      },
      child: Text("不加修饰的基础按钮",
          style: TextStyle(fontSize: 15, color: Colors.green)),
    );
  }

  //弹出菜单栏按钮
  Widget _testPopupMenuButton() {
    return PopupMenuButton(
      itemBuilder: (context) {
        return const [
          PopupMenuItem(
            value: "111",
            child:
                Text("1111", style: TextStyle(fontSize: 15, color: Colors.red)),
          ),
          PopupMenuItem(
            value: "2222",
            child:
                Text("2222", style: TextStyle(fontSize: 15, color: Colors.red)),
          ),
          PopupMenuItem(
            value: "3333",
            child:
                Text("3333", style: TextStyle(fontSize: 15, color: Colors.red)),
          )
        ];
      },
    );
  }

  //线框按钮
  Widget _testOutlineButton() {
    return OutlinedButton(
      onPressed: () {
        print("点击了线框按钮");
      },
      child: Text("线框按钮", style: TextStyle(fontSize: 15, color: Colors.yellow)),
    );
  }

  //带图标的按钮
  Widget _testIconButton() {
    return IconButton(
        onPressed: () {
          print("点击了带图的按钮");
        },
        icon: Icon(Icons.volume_up),
        // icon: Row(
        //   children: [
        //     Icon(Icons.volume_up),
        //     Text("图标按钮", style: TextStyle(fontSize: 10, color: Colors.red))
        //   ],
        // ),
        iconSize: 24, //图标的大小，默认值为 24
        color: Colors.red,
        tooltip: "提示文字",
        splashRadius: 35, //设置点击的闪光半径 默认是35
        splashColor: Colors.black //户按下 IconButton 点周围的闪光的主要颜色
        );
  }

  //悬浮按钮
  Widget _testFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        print("点击了悬浮按钮");
      },
      tooltip: "长按提示语",
      focusColor: Colors.green, //聚焦色
      hoverColor: Colors.green, //悬浮色
      splashColor: Colors.red, //点击时的颜色
      elevation: 10, //阴影高度
      focusElevation: 10, //聚焦时阴影高度
      hoverElevation: 10, //悬浮时阴影高度
      highlightElevation: 10, //高亮时阴影高度
      disabledElevation: 10, //不可用时阴影高度
      //默认false，默认按钮为 56 * 56，当mini 为 true 时，
      //默认大小为 40 * 40，边框padding 各为 4，所以布局大小为 48 * 48
      mini: false,
      // shape:    //  自定义形状
      //点击区域大小，MaterialTapTargetSize.padded时最小点击区域为48*48，
      //MaterialTapTargetSize.shrinkWrap 时为子组件的实际大小。
      materialTapTargetSize: MaterialTapTargetSize.padded,
      backgroundColor: Colors.green,
      isExtended: false, //当使用 FloatingActionButton.extended 方法时为 true
      child: const Text("悬浮按钮",
          style: TextStyle(fontSize: 12, color: Colors.black)),
    );
  }

  //基础按钮
  Widget _testElevatedButton() {
    return ElevatedButton(
      onPressed: () {
        //如果设置为nil,则按钮不会响应点击事件
        print("点击了按钮");
      },
      onLongPress: () {
        print("按钮长按事件回调方法");
      },
      onHover: (value) {
        print("鼠标悬停事件的回调方法");
      },
      onFocusChange: (value) {
        print("按钮焦点的变化回调事件方法");
      },
      style: const ButtonStyle(
          //设置按钮的样式 设置文字对齐方式
          alignment: Alignment.topRight),
      focusNode: FocusNode(canRequestFocus: false), //设置按钮的焦点
      autofocus: false, //是否自动获取焦点
      clipBehavior: Clip.antiAlias, //按钮的裁剪形式
      child: const Text("基础按钮",
          style: TextStyle(fontSize: 20, color: Colors.black)),
    );
  }
}
