import 'package:filter_it/app_pages/profile_pages/edit_password_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../custom_widgets/navigation_drawer.dart' as nav;
import '../../temporary_stubs/user_stub.dart';
import '../../custom_widgets/profile_image.dart';
import '../../data_models/user.dart';
import '../../custom_widgets/rounded_button.dart';
import 'edit_profile_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  final user = UserStub.userStub;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: const nav.NavigationDrawer(),
      body: ListView(
        padding: const EdgeInsets.only(top: 30),
        physics: const BouncingScrollPhysics(),
        children: [
          ProfileImage(
            profilePictureURL: user.profilePictureURL,
          ),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          buildUserStats(user),
          const SizedBox(height: 24),
          buildAboutUser(user),
          const SizedBox(height: 24),
          buildSocials(user),
          const SizedBox(height: 24),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildEditButton(),
                const SizedBox(width: 20),
                buildEditPasswordButton(),
              ],
            ),
          ),
        ],
      )
    );
  }

  Widget buildName(User user){
    return Column(
      children: [
        Text(
          user.name,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          user.email,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget buildEditButton(){
    return RoundedButton(
      text: "Edit Profile",
      onPressed:(){
        _updateUser(context);
      },
    );
  }

  Future<void> _updateUser(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditProfile(user: user),
      ),
    );
    if (result != null) {
      setState(() {
        user.name = result.name;
        user.email = result.email;
        user.about = result.about;
        user.facebookURL = result.facebookURL;
        user.instagramURL = result.instagramURL;
        user.twitterURL = result.twitterURL;
        user.linkedinURL = result.linkedinURL;
      });
    }
  }


  Widget buildEditPasswordButton(){
    return RoundedButton(
      text: "Edit Password",
      onPressed: () {
        _updatePassword(context);
      },
    );
  }

  Future<void> _updatePassword(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditPassword(user: user),
      ),
    );
    //Future code to update password goes here, firebase needed
  }

  Widget buildUserStats(User user){
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildStatColumn(context, "Favourites", user.favouritesCount),
          verticalDivider(),
          buildStatColumn(context, "Ratings", user.ratingsCount),
          verticalDivider(),
          buildStatColumn(context, "Reviews", user.reviewsCount),
        ],
      ),
    );
  }

  Widget buildStatColumn(BuildContext context, String label, String count){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            count,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black54
            ),
          ),
        ],
      ),
    );
  }

  Widget verticalDivider(){
    return const SizedBox(
      height: 28,
      child: VerticalDivider(
        color: Colors.black,
        thickness: 1,
      ),
    );
  }

  Widget buildAboutUser(User user){
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Text(
              "About me",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 120,
              child: SingleChildScrollView(
                child: Text(
                  user.about,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54
                  ),
                ),
              ),
            )
          ),
        ],
      ),
    );
  }

  Widget buildSocials(User user){
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Socials",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.facebook,
                  color: (user.facebookURL == "") ? Colors.grey : Colors.blue,
                ),
                onPressed: (user.facebookURL == "") ? null : () {_launchURL(user.facebookURL);},
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.twitter,
                  color: (user.twitterURL == "") ? Colors.grey : Colors.blue,
                ),
                onPressed: (user.twitterURL == "") ? null : () {_launchURL(user.twitterURL);},
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.linkedin,
                  color: (user.linkedinURL == "") ? Colors.grey : Colors.blue,
                ),
                onPressed: (user.linkedinURL == "") ? null : () {_launchURL(user.linkedinURL);},
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.instagram,
                  color: (user.instagramURL == "") ? Colors.grey : Colors.blue,
                ),
                onPressed: (user.instagramURL == "") ? null : () {_launchURL(user.instagramURL);}
              ),
            ],
          ),
        ],
      ),
    );
  }

  _launchURL(String url) async {
    final uri = Uri.parse(url);
    await launchUrl(uri);
  }
}