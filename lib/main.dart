import 'package:flutter/material.dart';
import 'chapters/chapters.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fluttips"),
      ),
      body: ListView(
        children: const [
          NavLink(
            chapter: 1,
            label: "FVM",
            screen: Chapter1(),
          ),
          NavLink(
            chapter: 2,
            label: "Exports",
            screen: Chapter2(),
          ),
          NavLink(
            chapter: 3,
            label: "Analysis Options",
            screen: Chapter3(),
          ),
          NavLink(
            chapter: 4,
            label: "List Prototype / Extent",
            screen: Chapter4(),
          ),
          NavLink(
            chapter: 5,
            label: "Responsive",
            screen: Chapter5(),
          ),
          NavLink(
            chapter: 6,
            label: "Make File",
            screen: Chapter6(),
          ),
          NavLink(
            chapter: 7,
            label: "Web vs Native Based Imports",
            screen: Chapter7(),
          ),
          NavLink(
            chapter: 8,
            label: "Dart Import Extension",
            screen: Chapter8(),
          ),
          NavLink(
            chapter: 9,
            label: "Refactor Tips",
            screen: Chapter9(),
          ),
        ],
      ),
    );
  }
}

class NavLink extends StatelessWidget {
  final int chapter;
  final String label;
  final Widget screen;
  const NavLink({
    super.key,
    required this.chapter,
    required this.label,
    required this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label),
      subtitle: Text("Chapter $chapter"),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => screen));
      },
    );
  }
}
