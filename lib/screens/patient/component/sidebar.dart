import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.indigo[900],
        padding: EdgeInsets.zero,
        child: ListView(

          children: [
            UserAccountsDrawerHeader(
              accountName: Text('chathurika Perera',style: TextStyle(color: Colors.white),),
              accountEmail: Text('abc@gmail.com', style: TextStyle(color: Colors.white),),
              currentAccountPicture: CircleAvatar(
                child: Image.asset(
                  'assets/images/category/child.png',
                  fit: BoxFit.cover,
                ),
                backgroundColor: Colors.white,
              ),
              decoration: BoxDecoration(
                //color: Colors.black26
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_filled, color: Colors.black, size: 35,),
              title: Text('Home', style: TextStyle(color: Colors.white),),
              onTap: () {},
              
            ),
            ListTile(
              leading: Icon(Icons.account_circle, color: Colors.black, size: 35,),
              title: Text('Profile', style: TextStyle(color: Colors.white),),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.announcement, color: Colors.black, size: 35,),
              title: Text('Notification', style: TextStyle(color: Colors.white),),
              onTap: () => null,
            ),
            ListTile(
              leading: Icon(Icons.west_outlined, color: Colors.black,size: 35,),
              title: Text('Sign Out', style: TextStyle(color: Colors.white),),
              onTap: () => null,
            )
          ],
        ),
      ),
    );
  }
}
