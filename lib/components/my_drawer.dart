import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          DrawerHeader(
            child: Center(
              child: Icon(
                Icons.shopping_bag,
                size: 72,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            )
          ),

          const SizedBox(height: 25),

          MyListTile(
            text: "Shop", 
            icon: Icons.home,
             onTap: () {}
          ),

          MyListTile(
            text: "Cart", 
            icon: Icons.shopping_bag,
             onTap: () {}
          ),

          MyListTile(
            text: "Exit", 
            icon: Icons.logout,
             onTap: () {}
          ),
        ],
      )
    );
  }
}