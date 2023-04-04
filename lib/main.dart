import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basic Blog Structure',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Basic Blog Structure')),
      body: const MyBlogBody(),
    );
  }
}

class MyBlogBody extends StatefulWidget {
  const MyBlogBody({Key? key}) : super(key: key);

  @override
  State<MyBlogBody> createState() => _MyBlogBodyState();
}

class _MyBlogBodyState extends State<MyBlogBody> {
  String blogText = 'Welcome to my blog';
  void _canadaBlog() {
    setState(() {
      blogText = 'This is the country Canada. This is not USA. It is a separate country by itself.';
    });
  }

  void indiaBlog() {
    setState(() {
      blogText = 'This is the country India. This is a beautiful country. It is a secular country, not a developed country.';
    });
  }

  void chinaBlog() {
    setState(() {
      blogText = 'This is the country China. It is very different from other countries of the world. It manages its own matters by itself.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(blogText, style: const TextStyle(fontSize: 20),),
            ElevatedButton(
              onPressed: _canadaBlog,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green.shade300),
              child: const Text('Canada'),
            ),
            ElevatedButton(
              onPressed: indiaBlog,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade300),
              child: const Text('India'),
            ),
            ElevatedButton(
              onPressed: chinaBlog,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow.shade300),
              child: const Text('China'),
            )
          ]
        ),
      )
    );
  }
}
