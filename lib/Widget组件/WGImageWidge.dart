
// ignore_for_file: file_names

/*
Image.network(src):从网络获取图片
Image.file(file):从文件获取图片
Image.asset(name): 从本地获取图片
Image.memory(bytes):从内存加载显示图片、这里需要传入图片的bytes数据，类型是Uint8List

加载本地图片注意点
1.必须在项目目录(和lib同级)下创建一个images文件夹，然后在该文件夹下创建1.0x/2.0x/3.0x文件夹
然后将对应的图片放在制定的文件夹下
2.到pubspec.lock文件下配置图片路径，切记assets和路径的格式不能错乱，哪怕是一个空格都不行
  assets:
    - images/duigou.png
    - images/2.0x/duigou.png
    - images/3.0x/duigou.png   


属性介绍
1.设置图片的背景颜色，通常和 colorBlendMode 配合一起使用，这样可以是图片颜色和背景色混合
color: 图片的混合色值
colorBlendMode: 图片与颜色的混合模式
2.fit:根据父容器来控制图片的拉伸和挤压,用于在图片的显示空间和图片本身大小不同时指定图片的适应模式
BoxFit.fill: 会拉伸填充满显示空间，图片本身长宽比会发生变化，图片会变形。
BoxFit.contain:会按图片的长宽比放大后居中填满显示空间，图片不会变形，超出显示空间部分会被剪裁。
BoxFit.cover：这是图片的默认适应规则，图片会在保证图片本身长宽比不变的情况下缩放以适应当前显示空间，图片不会变形。
BoxFit.fitWidth：图片的宽度会缩放到显示空间的宽度，高度会按比例缩放，然后居中显示，图片不会变形，超出显示空间部分会被剪裁。
BoxFit.fitHeight ：图片的高度会缩放到显示空间的高度，宽度会按比例缩放，然后居中显示，图片不会变形，超出显示空间部分会被剪裁。
BoxFit.scaleDown：效果和 contain 差不多，但是此属性不允许显示超过源图片大小，可小不可大。
BoxFit.none: 图片没有适应策略，会在显示空间内显示图片，如果图片比显示空间大，则显示空间只会显示图片中间部分
3.repeat : 当图片本身大小小于显示空间时，指定图片的重复规则
ImageRepeat.repeat : 横向和纵向都进行重复，直到铺满整个画布。
ImageRepeat.repeatX: 横向重复，纵向不重复。
ImageRepeat.repeatY：纵向重复，横向不重复。
width  宽度一般结合 ClipOval 才能看到效果
height  高度一般结合 ClipOval 才能看到效果
4.width/height: 宽度/高度一般结合 ClipOval 才能看到效果
5.scale: 图形显示的比例
6.semanticLabel: 给 Image 加上一个语义标签 没有实际用处
7.alignment: 图片的对齐方式
8.matchTextDirection: 图片的绘制方向 true:从左往右 false:从右往左
9.filterQuality: 设置图片的过滤质量,质量越高越慢
10.gaplessPlayback: 当图像提供者更改时 true：继续显示旧图像 false：简单地显示任何内容
*/
import 'package:flutter/material.dart';

// Image Widge 图片组件
class WGImageWidge extends StatelessWidget {
  const WGImageWidge({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return testLocalImage();
  }

  //1.测试本地图片
  Widget testLocalImage() {
    return Container(
        width: 300,
        height: 500,
        color: Colors.white,
        //显示本地图片了
        // child: const Image(
        //   image: AssetImage("images/duigou.png"),
        // )
        child: Image.asset("images/duigou.png",
            width: 10, height: 10, fit: BoxFit.contain));
  }

  //2.测试网络图片
  Widget testNetworkImage() {
    return Container(
      width: 300,
      height: 500,
      color: Colors.white,
      child: Image.network(
          "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic1.win4000.com%2Fmobile%2F7%2F55b8632ec9bea_120_80.jpg&refer=http%3A%2F%2Fpic1.win4000.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670642866&t=6a7ee6b0e9f2cc236f494ea5b481c782",
          // "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F8%2F55402f62682e3.jpg&refer=http%3A%2F%2Fpic1.win4000.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1670640340&t=0e4f3777e3fa63a6065320ca7355c848",
          // color: Colors.white, //设置图片的背景颜色，通常和 colorBlendMode 配合一起使用，这样可以是图片颜色和背景色混合
          // colorBlendMode: BlendMode.lighten,
          fit: BoxFit.none, //根据父容器来控制图片的拉伸和挤压
          scale: 1.0,
          repeat: ImageRepeat.noRepeat,
          semanticLabel: "我是一个张图片"),
    );
  }
}
