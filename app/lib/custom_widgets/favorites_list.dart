import 'package:filter_it/data_models/job_post.dart';
import 'package:filter_it/custom_widgets/small_fav_post_builder.dart';
import 'package:filter_it/itjobs_api/itjobs_api.dart';
import 'package:filter_it/temporary_stubs/jobpost_stub.dart';
import 'package:filter_it/temporary_stubs/fav_1post_stub.dart';
import 'package:filter_it/temporary_stubs/fav_2post_stub.dart';
import 'package:filter_it/temporary_stubs/fav_3post_stub.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/navigation_drawer.dart' as nav;

class FavoritesList {
  static List<JobPost> favPostsDisplay = [];

  void toggleFavorite(JobPost jobPost) {
    if (favPostsDisplay.contains(jobPost)) {
      favPostsDisplay.remove(jobPost);
    } else {
      favPostsDisplay.add(jobPost);
    }
  }

  bool isJobPostFavorite(JobPost jobPost) {
    return favPostsDisplay.contains(jobPost);
  }
}