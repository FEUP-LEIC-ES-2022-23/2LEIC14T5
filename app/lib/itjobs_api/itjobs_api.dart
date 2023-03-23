import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:filter_it/data_models/job_post.dart';

class ITJobsAPI {
  static Future<List<JobPost>> fetchJobPosts(Map<String, String> body) async {
    final response = await http.post(Uri.parse('https://api.itjobs.pt/job/list.json'), body: body);

    if (response.statusCode == 200) {
      final Map<String, dynamic> preFetch = json.decode(response.body);

      if(preFetch["results"].isEmpty){
        throw Exception("preFetch results is empty");
      }

      final List jobPostsJson = preFetch["results"];

      if(jobPostsJson.isEmpty){
        throw Exception("jobPostsJson is empty");
      }

      return jobPostsJson.map((jobPostJson) => JobPost.fromJson(jobPostJson)).toList();
    }

    else {
      throw Exception('Failed to load job posts');
    }
  }
}

