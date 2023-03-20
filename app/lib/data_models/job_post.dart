import 'package:filter_it/data_models/company.dart';
import 'package:filter_it/data_models/job_contract.dart';
import 'package:filter_it/data_models/job_location.dart';
import 'package:filter_it/data_models/job_type.dart';

class JobPost{
  final Company company;
  final int companyID;
  final String jobTitle;
  final String jobDescription;
  final String jobReference;
  final String jobWage;
  final JobType jobType;
  final JobContract jobContract;
  final JobLocation jobLocation;
  final String publishedDate;
  final String updatedDate;
  final String jobSlug;

  JobPost({
    required this.company,
    required this.companyID,
    required this.jobTitle,
    required this.jobDescription,
    required this.jobReference,
    required this.jobWage,
    required this.jobType,
    required this.jobContract,
    required this.jobLocation,
    required this.publishedDate,
    required this.updatedDate,
    required this.jobSlug,
  });
}