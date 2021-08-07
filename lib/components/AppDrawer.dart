import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  State<StatefulWidget> createState() {
    return AppDrawerState();
  }
}

class AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          
      children: [
        SizedBox(height: 20,),
      /*  UserAccountsDrawerHeader(
          accountName: Text("mohamed malek"),
          accountEmail: Text("mohamedmalek@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: Icon(
              Icons.person,
              size: 40,
            ),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/image.jpg"),
                  fit: BoxFit.cover)),
        ),
        */

        // the drower menu
        ListTile(
          title: Text(
            "الرئيسية",
            style: TextStyle(fontSize: 17, color: Colors.grey[600]),
          ),
          // leading: Icon(Icons.home),
          trailing: Icon(Icons.arrow_back_ios_new),
          onTap: () {
            Navigator.of(context).pushNamed("homePage");
          },
        ),
        Container(
            child: Divider(
              thickness: 1,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            )),
        ListTile(
          title: Text(
            "الماركات",
            style: TextStyle(fontSize: 17, color: Colors.grey[600]),
          ),
          // leading: Icon(Icons.home),
          trailing: Icon(Icons.arrow_back_ios_new),
          onTap: () {
            Navigator.of(context).pushNamed("categories");
          },
        ),
        Container(
            child: Divider(
              thickness: 1,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            )),
        ListTile(
          title: Text(
            "حسابي",
            style: TextStyle(fontSize: 17, color: Colors.grey[600]),
          ),
          // leading: Icon(Icons.home),
          trailing: Icon(Icons.arrow_back_ios_new),
          onTap: () {
            Navigator.of(context).pushNamed("categories");
          },
        ),
        Container(
            child: Divider(
              thickness: 1,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            )),
        ListTile(
          title: Text(
            "من نحن",
            style: TextStyle(fontSize: 17, color: Colors.grey[600]),
          ),
          // leading: Icon(Icons.home),
          trailing: Icon(Icons.arrow_back_ios_new),
          onTap: () {
            Navigator.of(context).pushNamed("categories");
          },
        ),
        Container(
            child: Divider(
              thickness: 1,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            )),
        Expanded(
          child: Container(
            alignment: Alignment.bottomCenter,
            child: ListTile(
              title: Text("",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.center),
            ),
          ),
        ),
      ],
    ));
  }
}
