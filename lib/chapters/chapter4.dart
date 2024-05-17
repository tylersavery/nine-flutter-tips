import 'package:flutter/material.dart';

final items = List<String>.generate(100000, (i) => "Item $i");

enum Approach {
  bad,
  good,
  great,
}

const approach = Approach.great;

class Chapter4 extends StatelessWidget {
  const Chapter4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chapter 4"),
      ),
      body: Builder(builder: (context) {
        switch (approach) {
          case Approach.bad:
            return ListView(
              children: items.map(
                (item) {
                  return Card(
                    child: ListTile(
                      title: Text(item),
                    ),
                  );
                },
              ).toList(),
            );
          case Approach.good:
            return ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Card(
                    child: ListTile(
                      title: Text(item),
                    ),
                  );
                });
          case Approach.great:
            return ListView.builder(
                itemCount: items.length,
                prototypeItem: Card(
                  child: ListTile(
                    title: Text(items.first),
                  ),
                ),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Card(
                    child: ListTile(
                      title: Text(item),
                    ),
                  );
                });
        }
      }),
    );
  }
}
