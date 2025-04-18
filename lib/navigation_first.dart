import 'package:books/navigation_second.dart';
import 'package:flutter/material.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State <NavigationFirst> {
  Color color = Colors.tealAccent.shade700;
  Future _navigateAndGetColor(BuildContext context) async {
    color = await Navigator.push(context,
            MaterialPageRoute(builder : (context) => const NavigationSecond()),) ??
            Colors.cyanAccent;
            setState(() {
              
            });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation First Screen #PutraAleppo'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _navigateAndGetColor(context);
          }),
      ),
    );
  }
}