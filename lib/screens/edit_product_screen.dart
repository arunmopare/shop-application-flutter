import 'package:flutter/material.dart';

class EditProductScreen extends StatefulWidget {
  static const routeName = '/edit_product';
  EditProductScreen({Key key}) : super(key: key);

  @override
  _EditProductScreenState createState() =>
      _EditProductScreenState();
}

class _EditProductScreenState
    extends State<EditProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('Edit Products')),
      ),
      body: Column(),
    );
  }
}
