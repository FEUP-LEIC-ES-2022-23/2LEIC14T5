import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:filter_it/data_models/job_post.dart';

class ITJobsAPI {
  static Future<List<JobPost>> fetchJobPosts(Map<String, String> body) async {
    Map<String, dynamic> finalBody = {};
    String query = '';
    for(var key in body.keys){
      if(key == 'api_key'){
        finalBody[key] = body[key];
      }
      else if(body[key] != 'Unspecified' && key != 'limit'){
        if(query.isEmpty){
          query += body[key].toString().toLowerCase();
        }
        else{
          query += ',${body[key].toString().toLowerCase()}';
        }
      }
    }

    if(query.isNotEmpty){
      finalBody['q'] = query;
    }
    finalBody['limit'] = body['limit'];

    for(var key in finalBody.keys){
      print('$key: ${finalBody[key]}');
    }

    final response = await http.post(Uri.parse('https://api.itjobs.pt/job/list.json'), body: finalBody);

    if (response.statusCode == 200) {
      final Map<String, dynamic> preFetch = json.decode(response.body);

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

