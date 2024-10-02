import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Changer App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ColorChangerPage(),
    );
  }
}

class ColorChangerPage extends StatefulWidget {
  const ColorChangerPage({super.key});

  @override
  ColorChangerPageState createState() => ColorChangerPageState();
}

class ColorChangerPageState extends State<ColorChangerPage> {
  Color _backgroundColor = Colors.white; // Default background color

  void _changeColor(Color color) {
    setState(() {
      _backgroundColor = color; // Change background color
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Changer App'),
      ),
      body: Container(
        color: _backgroundColor, // Set the background color
        child: GridView.count(
          crossAxisCount: 3, // Three buttons per row
          padding: const EdgeInsets.all(100.0), // Padding around the grid
          crossAxisSpacing: 10, // Space between columns
          mainAxisSpacing: 100, // Space between rows
          children: <Widget>[
            _colorButton(Colors.red, 'Red'),
            _colorButton(Colors.green, 'Green'),
            _colorButton(Colors.blue, 'Blue'),
            _colorButton(Colors.yellow, 'Yellow'),
            _colorButton(Colors.orange, 'Orange'),
            _colorButton(Colors.purple, 'Purple'),
          ],
        ),
      ),
    );
  }

  ElevatedButton _colorButton(Color color, String label) {
    return ElevatedButton(
      onPressed: () => _changeColor(color), // Change background color
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.zero, // No padding to make it square
        minimumSize: const Size(50, 50), // Smaller square size
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)), // Rounded corners
        ),
        elevation: 5, // Add shadow for a 'sexy' effect
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 18, 
          color: Color.fromARGB(255, 26, 19, 19),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
