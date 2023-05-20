import 'package:filter_it/authentication/auth_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../authentication/auth_page.dart';
import '../app_pages/home_page.dart';
import '../app_pages/favorites_page.dart';
import '../app_pages/help_page.dart';
import '../app_pages/search_page.dart';
import '../app_pages/profile_pages/profile_page.dart';
import '../authentication/main_page.dart';


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
          key: const Key('home_key'),
          leading: const Icon(Icons.home),
          title: const Text("Home Page"),
          onTap: () =>
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const HomePage()
              )),
        ),
        ListTile(
          key: const Key('search_key'),
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
          key: const Key('favorites_key'),
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
          leading: const Icon(Icons.person),
          title: const Text("Profile"),
          onTap: () {
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ProfilePage(),
            ));
          },
        ),

        ListTile(
            key: const Key('help_key'),
            leading: const Icon(Icons.question_mark_rounded),
            title: const Text("Help Page"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const HelpPage()
              ));
            }
        ),

        ListTile(
          leading: const Icon(Icons.arrow_back),
          title :const Text("Sign Out"),
          onTap: ()  {
            FirebaseAuth.instance.signOut();
            Navigator.pop(context);
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const MainPage()
            ));
          },
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