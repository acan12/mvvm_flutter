import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatefulWidget {
  final Exception? exception;

  const ErrorPage({Key? key, this.exception}) : super(key: key);


  @override
  _ErrorPageState createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Error Page"),
      ),
      body: Center(
        child: Text(widget.exception.toString()),
      ),
    );
  }

}