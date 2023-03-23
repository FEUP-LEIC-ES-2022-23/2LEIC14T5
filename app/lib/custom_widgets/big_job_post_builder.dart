import 'package:filter_it/data_models/job_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class BigJobPostBuilder extends StatelessWidget{
  final JobPost jobPost;

  const BigJobPostBuilder({
    Key? key,
    required this.jobPost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(jobPost.jobTitle),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Text(jobPost.jobTitle),
    );
  }
}