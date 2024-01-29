import 'package:factory_method_pattern_dart/shape.dart';
import 'package:factory_method_pattern_dart/utils.dart';
import 'package:flutter/material.dart';

/// global state data
Shape currShape = NullShape();

void main() {
  runApp(const MyApp());
}

/// Creationg a raised button style for our button

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.black, 
  backgroundColor: Colors.grey,
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

/// Main app widget entry point

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Factory Method Pattern',
      home: MyHomePage(),
    );
  }
}

/// our main widget scaffolding

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Factory Method Pattern'),
      ),
      body: ListView(
        children: [
          Text(
            currShape.getName,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 400,
            height: 400,
            child: CustomPaint(
              painter: CanvasPainter(),
            ),
          ),
          ElevatedButton(
            style: raisedButtonStyle,
            child: const Text('Generate New Random Shape'),
            onPressed: () {
              setState(() {
                currShape = Utils.generateRandomShape(const Size(400, 400));
              });
            },
          ),
        ],
      ),
    );
  }
}

class CanvasPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    currShape.draw(canvas);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

