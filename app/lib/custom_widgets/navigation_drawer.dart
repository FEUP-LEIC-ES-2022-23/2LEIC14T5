import 'package:flutter/material.dart';

import '../app_pages/home_page.dart';
import '../app_pages/favorites_page.dart';
import '../app_pages/help_page.dart';
import '../app_pages/search_page.dart';


class NavigationDrawer extends StatelessWidget{
  const NavigationDrawer({Key? key}) : super(key: key);

  Widget buildHeader(BuildContext context){
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
    );
  }

  Widget buildItems(BuildContext context){
    return Wrap(
      runSpacing: 10,
      children: [
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text("Home Page"),
          onTap: () =>
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const HomePage()
              )),
        ),
        ListTile(
          leading: const Icon(Icons.search),
          title: const Text("Search Page"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const SearchPage(),
            ));
          },
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text("Favorites"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const FavoritesPage(),
            ));
          },
        ),

        const Divider(
          color: Colors.black,
          indent: 10,
          endIndent: 10,
        ),

        ListTile(
            leading: const Icon(Icons.question_mark_rounded),
            title: const Text("Help Page"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HelpPage()
              ));
            }
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildItems(context)
          ],
        ),
      ),
    );
  }
}