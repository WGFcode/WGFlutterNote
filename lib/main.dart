import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          title: const Text("按钮组件",
              style: TextStyle(fontSize: 18, color: Colors.white))),
      body: Container(child: const Text("111"), color: Colors.white),
    ),
  ));
}



// class WGTabWidge extends StatelessWidget {
//   const WGTabWidge({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             title: const Text(
//           "标题222",
//           style: TextStyle(fontSize: 15, color: Colors.white),
//         )),
//         // ignore: avoid_unnecessary_containers
//         body: Container(
//             color: Colors.white,
//             alignment: Alignment.center,
//             child: const Text("内容",
//                 style: TextStyle(fontSize: 15, color: Colors.red))
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(

//               ))
//           ],
//         ),
//     );
//   }
// }
