import 'package:flutter/material.dart';

class CharacterDetailsScreen extends StatelessWidget {
  const CharacterDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details Screen")),
      body: const Center(child: Text("Details Screen")),
    );
  }
}
