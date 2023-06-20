import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_practice/Extension.dart';
import 'package:flutter_practice/list_item/DissmissiblePage.dart';
import 'package:flutter_practice/list_item/FormValidationPage.dart';
import 'package:flutter_practice/list_item/MethodChannelPage.dart';
import 'package:flutter_practice/list_item/Swipe/SwipePage.dart';
import 'package:flutter_practice/list_item/drawer_page.dart';
import 'package:flutter_practice/list_item/orientation_builder_page.dart';
import 'package:flutter_practice/list_item/snackbar_page.dart';
import 'package:flutter_practice/list_item/tab_controller_page.dart';
import '../list_item/animated_opacity_page.dart';
import '../list_item/animatedcontainer_page.dart';
import 'list_model.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final _pages = const [
    AnimatedContainerPage(),
    AnimatedOpacityPage(),
    DrawerPage(),
    SnackBarPage(),
    OrientationBuilderPage(),
    TabControllerPage(),
    FormValidationPage(),
    DissmissiblePage(),
    SwipePage(),
    MethodChannelPage()
  ];
  final _names = const [
    'AnimatedContainerPage',
    'AnimatedOpacityPage',
    'DrawerPage',
    'SnackBarPage',
    'OrientationBuilderPage',
    'TabControllerPage',
    'FormValidationPage',
    'DissmissiblePage',
    'SwipePage',
    'MethodChannelPage'
  ];
  late List<ListModel> listData = List.generate(
      _pages.length, (index) => ListModel(_names[index], _pages[index]));

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(const Duration(seconds: 3));
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: '#F6F6F6'.toColor(),
        appBar: AppBar(
          title: const Text("ListView"),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8.0),
          itemCount: _pages.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.white,
              elevation: 2.0,
              child: ListTile(
                tileColor: "#FDFDFD".toColor(), //"#F8F8F8".toColor(),
                trailing: const Icon(Icons.east),
                title: Text(
                  listData[index].name,
                  style: const TextStyle(
                      fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => listData[index].page));
                },
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
            height: 4.0,
            thickness: 0,
            color: Colors.transparent,
          ),
        ));
  }
}
