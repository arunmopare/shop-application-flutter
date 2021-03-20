import 'package:flutter/material.dart';
import 'package:my_shop/screens/orders_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text('Hello Arun !'),
              automaticallyImplyLeading: false,
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.shop,
              ),
              title: Text('Shop'),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed('/');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
              ),
              title: Text('Payment'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(
                    OrdersScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
