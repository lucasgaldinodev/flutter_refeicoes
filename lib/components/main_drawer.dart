import 'package:flutter/material.dart';
import '../utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  Widget _createItem(IconData icon, String label, Function() onTap) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).accentColor,
            alignment: Alignment.bottomCenter,
            child: Text(
              "Let's Cook?",
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ),
          SizedBox(height: 10),
          _createItem(
            Icons.restaurant,
            'Meals',
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.HOME),
          ),
          _createItem(
            Icons.settings,
            'Settings',
            () => Navigator.of(context).pushReplacementNamed(AppRoutes.SETINGS),
          ),
        ],
      ),
    );
  }
}
