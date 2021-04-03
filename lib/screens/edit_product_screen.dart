import 'package:flutter/material.dart';

class EditProductScreen extends StatefulWidget {
  static const routeName = '/edit_product';
  EditProductScreen({Key key}) : super(key: key);

  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  final _priceFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('Edit Products')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            child: ListView(children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Title'),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            onFieldSubmitted: (_) {
              FocusScope.of(context).requestFocus(_priceFocusNode);
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Price'),
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,
            focusNode: _priceFocusNode,
          )
        ])),
      ),
    );
  }
}
