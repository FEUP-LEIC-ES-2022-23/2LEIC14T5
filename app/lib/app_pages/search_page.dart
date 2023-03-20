import 'package:filter_it/custom_widgets/search_bar.dart';
import 'package:filter_it/data_models/job_post.dart';
import 'package:filter_it/data/job_posts_examples.dart';
import 'package:filter_it/custom_widgets/small_job_post_builder.dart';
import 'package:flutter/material.dart';

import '../navigation_drawer.dart' as nav;


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  late List<JobPost> jobPostsExample;
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    jobPostsExample = example;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Page'),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: const nav.NavigationDrawer(),
      body: Column(
        children: <Widget> [
          searchBar(),
          Expanded(
            child: ListView.builder(
              itemCount: jobPostsExample.length,
              itemBuilder: (context, index) {
                  final jobPost = jobPostsExample[index];
                  return jobPostBuilder(jobPost);
              },
            ),
          ),
        ]
      )
    );
  }
  
  Widget searchBar() => SearchBar(
    text: searchQuery,
    hintText: "Type a job type or a company name",
    onChanged: searchJobPosts,
  );

  Widget jobPostBuilder(JobPost jobPost) => SmallJobPostBuilder(
      jobPost: jobPost
  );

  void searchJobPosts(String query) {
    final filteredJobPosts = example.where((jobPost) {
      final companyNameLower = jobPost.company.companyName.toLowerCase();
      final jobTitleLower = jobPost.jobTitle.toLowerCase();
      final searchLower = query.toLowerCase();
      return companyNameLower.contains(searchLower) || jobTitleLower.contains(searchLower);
    }).toList();

    setState(() {
      searchQuery = query;
      jobPostsExample = filteredJobPosts;
    });
  }
}