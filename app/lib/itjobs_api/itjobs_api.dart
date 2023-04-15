import 'dart:convert';
import 'package:filter_it/temporary_stubs/jobpost_stub.dart';
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

      else if(key == 'jobType' && body[key] != 'Unspecified'){
        finalBody['type'] = body[key].toString();
      }

      else if(key == 'contractType' && body[key] != 'Unspecified'){
        finalBody['contract'] = body[key].toString();
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

    final response = await http.post(Uri.parse('https://api.itjobs.pt/job/list.json'), body: finalBody);

    if (response.statusCode == 200) {
      final Map<String, dynamic> preFetch = json.decode(response.body);
      List jobPostsJson = [];
      if(preFetch["results"] == null){
        jobPostsJson = [];
      }
      else {
        jobPostsJson = preFetch["results"];
      }

      if(jobPostsJson.isEmpty){
        throw Exception("jobPostsJson is empty");
      }

      List<JobPost> finalList =  jobPostsJson.map((jobPostJson) => JobPost.fromJson(jobPostJson)).toList();
      finalList.insert(0,JobPostStub.jobpostStub);
      for (int i = 0; i < finalList.length; i++){
        finalList[i].jobID = i+1;
      }
      return finalList;
    }

    else {
      throw Exception('Failed to load job posts');
    }
  }
}

