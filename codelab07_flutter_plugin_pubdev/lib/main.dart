import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

// Widget teks merah (file ini bisa digabung dulu untuk percobaan)
class RedTextWidget extends StatelessWidget {
  final String text;

  const RedTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: const TextStyle(color: Colors.red, fontSize: 14),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}

// Aplikasi utama
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Gunakan RedTextWidget di sini
            Container(
              color: Colors.yellowAccent,
              width: 200,
              padding: const EdgeInsets.all(8.0),
              child: const RedTextWidget(
                text: 'You have pushed the button this many times:',
              ),
            ),
            const SizedBox(height: 20),
            // Tambahan Text biasa untuk perbandingan
            Container(
              color: Colors.greenAccent,
              width: 200,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'This is a normal Text widget.',
                style: TextStyle(fontSize: 14),
              ),
            ),
            const SizedBox(height: 20),
            // Menampilkan counter
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
