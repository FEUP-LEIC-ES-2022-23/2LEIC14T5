import 'package:filter_it/custom_widgets/search_bar.dart';
import 'package:filter_it/data_models/job_post.dart';
import 'package:filter_it/custom_widgets/small_job_post_builder.dart';
import 'package:filter_it/itjobs_api/itjobs_api.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import '../navigation_drawer.dart' as nav;


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  late List<JobPost> jobPostsFinal = [];
  String searchQuery = '';
  var requestBody = {
    'api_key': '74f0ed2264074636d4cc729bd22c62de',
    'limit': '2',
  };
  Timer? _debounce;

  @override
  void initState() {
    super.initState();

    init();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  void debouncedSearch(
      VoidCallback callback, {
        Duration duration = const Duration(milliseconds: 500),
      }) {
    if (_debounce != null) {
      _debounce!.cancel();
    }

    _debounce = Timer(duration, callback);
  }

  Future init() async {
    final jobPosts = await ITJobsAPI.fetchJobPosts(searchQuery, requestBody);
    setState(() {
      jobPostsFinal = jobPosts;
    });
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
              itemCount: jobPostsFinal.length,
              itemBuilder: (context, index) {
                  final jobPost = jobPostsFinal[index];
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

  Future searchJobPosts(String query) async  => debouncedSearch(() async {
    final jobPosts = await ITJobsAPI.fetchJobPosts(searchQuery, requestBody);

    if(!mounted) return;

    setState(() {
      searchQuery = query;
      jobPostsFinal = jobPosts;
    });
  });
}