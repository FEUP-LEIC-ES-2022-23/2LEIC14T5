import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:filter_it/data_models/job_post.dart';

class ITJobsAPI {
  static var headers = {
    'api_key': '74f0ed2264074636d4cc729bd22c62de',
  };

  ITJobsAPI(Map<String, String> headers){
    if(headers.isNotEmpty){
      for (var header in headers.entries) {
        ITJobsAPI.headers[header.key] = header.value;
      }
    }
  }

  static addHeader(String key, String value){
    headers[key] = value;
  }

  static Future<List<JobPost>> fetchJobPosts() async {
    final response = await http.get(Uri.parse('https://itjobs.pt/api/v1/jobs'), headers: headers);
    if (response.statusCode == 200) {
      final List<dynamic> jobPostsJson = jsonDecode(response.body);
      return jobPostsJson.map((jobPostJson) => JobPost.fromJson(jobPostJson)).toList();
    } else {
      throw Exception('Failed to load job posts');
    }
  }
}

