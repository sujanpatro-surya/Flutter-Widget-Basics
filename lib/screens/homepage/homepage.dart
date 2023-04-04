import 'package:flutter/material.dart';
import 'blog_body.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Basic Blog Structure')),
      body: const MyBlogBody()
    );
  }
}
