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
  late List<JobPost> jobPostsDisplay = [];
  List<JobPost> allJobPosts = [];
  String searchQuery = '';
  var requestBody = {
    'api_key': '74f0ed2264074636d4cc729bd22c62de',
    'limit': '10',
  };

  @override
  void initState() {
    super.initState();
    init();
  }

  Future init() async {
    final jobPosts = await ITJobsAPI.fetchJobPosts(requestBody);
    setState(() {
      jobPostsDisplay = jobPosts;
      allJobPosts = jobPosts;
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
            child: jobPostsDisplay.isEmpty
                ? const Center(
                  child: Text(
                    'No results found.',
                    style: TextStyle(
                      fontSize: 20,
                    )
                  )
                )
                : ListView.builder(
              itemCount: jobPostsDisplay.length,
              itemBuilder: (context, index) {
                final jobPost = jobPostsDisplay[index];
                return jobPostBuilder(jobPost);
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                jobPostsDisplay.isNotEmpty ?
                ElevatedButton(
                  onPressed: () async {
                    requestBody['limit'] = (int.parse(requestBody['limit']!) + 10).toString();
                    final jobPosts = await ITJobsAPI.fetchJobPosts(requestBody);
                    setState(() {
                      allJobPosts = jobPosts;
                      jobPostsDisplay = jobPosts;
                    });
                  },
                  child: const Text("Add more results"),
                ) : const SizedBox(width: 0, height: 0),

                jobPostsDisplay.length > 10 ?
                    const SizedBox(width: 10, height: 0) : const SizedBox(width: 0, height: 0),

                jobPostsDisplay.length > 10 ?
                ElevatedButton(
                  onPressed: () async{
                    requestBody['limit'] = (int.parse(requestBody['limit']!) - 10).toString();
                    final jobPosts = await ITJobsAPI.fetchJobPosts(requestBody);
                    setState(() {
                      allJobPosts = jobPosts;
                      jobPostsDisplay = jobPosts;
                    });
                  },
                  child: const Text("See less results"),
                ) : const SizedBox(width: 0, height: 0),
              ],
            )
          )
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
    final temp = allJobPosts.where((jobPost){
      return jobPost.jobTitle.toLowerCase().contains(query.toLowerCase())
            || jobPost.company.companyName.toLowerCase().contains(query.toLowerCase());
    }).toList();

    setState(() {
      searchQuery = query;
      jobPostsDisplay = temp;
    });
  }
}