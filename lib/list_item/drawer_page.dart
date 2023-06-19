import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero, // 윗쪽 영역까지 채우기
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.transparent),
                  color: Colors.red,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                  )),
              accountName: const Text('Hello World'),
              accountEmail: const Text('ljhjohn1@gmail.com'),
              onDetailsPressed: () => print("h"),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              title: const Text('Item 3'),
              onTap: () {
                Navigator.pop(context);
              },
              trailing: const Icon(Icons.add),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      body: const Center(
        child: Text('Drawer 예제'),
      ),
    );
  }
}
