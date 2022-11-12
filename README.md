# wg_first_flutter_project

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


1.目录结构分析
 .dart_tool: 记录某些东西的版本等信息，不需要我们手动配置，所以尽量不要去改动
 .idea: 记录项目配置
 .xxx.iml: 和.idea类似的，都是记录了当前项目的一些配置信息
 android: flutter对应的Android工程
 ios: flutter对应的iOS工程
 lib: 非常重要，我们写的代码都是在lib文件下；
 test: 测试用的
 web:
 .gitignore: git忽略配置
 .metadata: flutter版本记录，不应该手动编辑
2.热重载和热重启
 Hot Reload: 【热重载】最重要的是执行【build】方法
  Hot Restart 【热重启】重新运行整个的APP
