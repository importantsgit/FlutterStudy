import 'package:flutter/material.dart';

class DissmissiblePage extends StatefulWidget {
  const DissmissiblePage({super.key});

  @override
  State<DissmissiblePage> createState() => _DissmissiblePageState();
}

class _DissmissiblePageState extends State<DissmissiblePage> {
  final items = List<String>.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dismissible"),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
              background: Container(
                padding: const EdgeInsets.only(left: 16.0),
                alignment: Alignment.centerLeft,
                color: Colors.red,
                child: const Text(
                  '삭제',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              direction: DismissDirection.startToEnd,
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  setState(() {
                    items.removeAt(index);
                  });
                }
              },
              key: Key(item),
              child: ListTile(
                title: Text(items[index]),
              ),
            );
          }),
    );
  }
}
