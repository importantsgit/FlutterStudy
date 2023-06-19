import 'package:flutter/material.dart';

class TabControllerPage extends StatefulWidget {
  const TabControllerPage({super.key});

  @override
  State<TabControllerPage> createState() => _TabControllerPageState();
}

class _TabControllerPageState extends State<TabControllerPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabController'),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 2,
            dividerColor: Colors.transparent,
            tabs: [
              Tab(icon: Icon(Icons.access_alarm), text: "Alarm"),
              Tab(icon: Icon(Icons.luggage), text: 'Trips'),
              Tab(icon: Icon(Icons.explore), text: 'explore'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            NestedTabBar('Alarm'),
            NestedTabBar('Trips'),
            NestedTabBar('explore'),
          ],
        ),
      ),
    );
  }
}

class NestedTabBar extends StatefulWidget {
  const NestedTabBar(this.outerTab, {super.key});

  final String outerTab;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar.secondary(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: 'OverView'),
            Tab(text: 'Sepcifications')
          ],
        ),
        Expanded(
            child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.all(16.0),
              child: Center(
                child: Text('${widget.outerTab}: Overview tab'),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(16.0),
              child: Center(
                child: Text('${widget.outerTab}: Specifications tab'),
              ),
            )
          ],
        ))
      ],
    );
  }
}
