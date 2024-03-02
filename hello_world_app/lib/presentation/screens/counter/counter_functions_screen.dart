import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int counter = 0;

  void incrementCounter() {
    counter++;
    setState(() {});
  }

  void increaseCounter() {
    if (counter > 0) {
      counter--;
      setState(() {});
    }
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  String getClickLabel() {
    return 'Click${counter == 1 ? '' : 's'}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Counter Functions'),
          // leading: IconButton(
          //   icon: const Icon(Icons.refresh_rounded),
          //   onPressed: () {},
          // )),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: const Icon(Icons.refresh_rounded),
                onPressed: () {
                  setState(() {
                    counter = 0;
                  });
                },
              ),
            )
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              getClickLabel(),
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(icon: Icons.refresh_rounded, onPressed: resetCounter),
          const SizedBox(height: 10),
          CustomButton(icon: Icons.plus_one, onPressed: incrementCounter),
          const SizedBox(height: 10),
          CustomButton(
              icon: Icons.exposure_minus_1, onPressed: increaseCounter),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
