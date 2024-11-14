import 'package:flutter/material.dart';
import 'package:social_justice_app/frontend/widgets/main_drawer_item.dart';
import 'package:solop/frontend/widgets/main_drawer_Item.dart';
Widget mainDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsects.zero,
      children: [
        const UserAccountsDrawerHeader(
          accountName: Text(''),
          accountEmail: Text(''),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo.png'),
            backgroundColor: Colors.deepPurpleAccent,
          ),
          decoration: BoxDecoration(color: Colors.deepPurpleAccent),
           ),
           buildDrawerItem(
              context,
              icon: Icons.search,
              label: 'Fact Check',
              route: '/facts',
             ),
             buildDrawerItem(
                context,
                icon: Icons.report,
                label: 'Report',
                route: '/report',
              ),
              buildDrawerItem(
                  context,
                  icon: Icons.newspaper,
                  label: 'Hot Now',
                  route: '/viewreport',
              ),
              buildDrawerItem(
                  context,
                  icon: Icons.info,
                  label: 'Youth Empowerment',
                  route: '/youths',
              ),

      ],
    ),
  )
}