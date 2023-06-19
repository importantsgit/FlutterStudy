import 'package:flutter/cupertino.dart';

import '../list_item/animatedcontainer_page.dart';

class ListModel {
  final String name;
  Widget page = const AnimatedContainerPage();

  ListModel(this.name, this.page);
}
