import 'package:breaking_bloc/constants/strings.dart';
import 'package:flutter/material.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;

  final Offset begin = const Offset(3.0, 0.0);
  final Offset end = const Offset(0.0, 0.0);
  final Duration milliseconds = const Duration(milliseconds: 2500);
  final Curve curve = Curves.fastOutSlowIn;
  final Duration duration = const Duration(milliseconds: 2500);

  @override
  void initState() {
    animationController = AnimationController(
      duration: const Duration(milliseconds: 2500),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });
    animation = Tween<Offset>(begin: begin, end: end)
        .animate(CurvedAnimation(parent: animationController, curve: curve));
    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Characters Screen")),
      body: Center(
          child: SlideTransition(
        position: animation,
        child: InkWell(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.green,
            alignment: Alignment.center,
            child: const Text(
              "Characters Screen",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          onTap: () {
            Navigator.of(context).pushNamed(charactersDetailsScreen);
          },
        ),
      )),
    );
  }
}
