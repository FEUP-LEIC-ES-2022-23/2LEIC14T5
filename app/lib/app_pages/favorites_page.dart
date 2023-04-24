import 'package:filter_it/data_models/job_post.dart';
import 'package:filter_it/custom_widgets/small_fav_post_builder.dart';
import 'package:filter_it/itjobs_api/itjobs_api.dart';
import 'package:filter_it/temporary_stubs/fav_1post_stub.dart';
import 'package:filter_it/temporary_stubs/fav_2post_stub.dart';
import 'package:filter_it/temporary_stubs/fav_3post_stub.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/navigation_drawer.dart' as nav;

class FavoritesPage extends StatefulWidget{
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<JobPost> favPostsDisplay = [];
  final fav1 = StarkPostStub.fav1;
  final fav2 = WaynePostStub.fav2;
  final fav3 = OscorpPostStub.fav3;

  @override
  void initState() {
    super.initState();
    addFavPost();
  }

  void addFavPost() {
    favPostsDisplay.add(fav1);
    favPostsDisplay.add(fav2);
    favPostsDisplay.add(fav3);
  }

  void removeFavPost(JobPost jobPost){
    setState(() {
      favPostsDisplay.remove(jobPost);
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: const nav.NavigationDrawer(),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: favPostsDisplay.isEmpty
                ? const Center(
                    child: Text(
                    'No results found.',
                    style: TextStyle(
                      fontSize: 20,
                    )
                  ) 
                )
                : ListView.builder(
                    itemCount: favPostsDisplay.length,
                    itemBuilder: (context, index) {
                      final jobPost = favPostsDisplay[index];
                      return favPostBuilder(jobPost);
                    },
                  ),
            ),
          ],
        )
      ),
    );
  }

  Widget favPostBuilder(JobPost jobPost) => SmallFavPostBuilder(
    jobPost: jobPost,
    onDelete: () => removeFavPost(jobPost),
  );
}