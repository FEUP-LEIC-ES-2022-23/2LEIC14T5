import 'package:filter_it/data_models/job_post.dart';
import 'package:filter_it/data_models/job_type.dart';
import 'package:filter_it/data_models/job_contract.dart';
import 'package:filter_it/data_models/job_location.dart';
import 'package:filter_it/data_models/company.dart';

final example = <JobPost> [
  JobPost(
    company: Company(
      companyID: 1,
      companyName: 'Pear',
      logoURL: 'https://images.unsplash.com/photo-1567446537708-ac4aa75c9c28?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      companyDescription: 'This is a company description',
      companyPhoneNumber: 'This is a company phone number',
      companyEmail: 'This is a company email',
      companyFax: 'This is a company fax',
      companyAddress: 'This is a company address',
      companyURL: 'This is a company URL',
      companySlug: 'This is a company slug',
    ),
    companyID: 1,
    jobTitle: 'Java Developer',
    jobDescription: 'This is a job description',
    jobReference: 'This is a job reference',
    jobWage: '1000',
    jobType: JobType(
      jobTypeID: 1,
      jobTypeName: 'This is a job type name',
    ),
    jobContract: JobContract(
      jobContractID: 1,
      jobContractName: 'This is a job contract name',
    ),
    jobLocation: JobLocation(
      jobLocationID: 1,
      jobLocationName: 'This is a job location name',
    ),
    publishedDate: '2021-01-01',
    updatedDate: '2021-01-01',
    jobSlug: 'This is a job slug',
  ),

  JobPost(
    company: Company(
      companyID: 2,
      companyName: 'Banana',
      logoURL: 'https://images.unsplash.com/photo-1560622496-c49bec679e71?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
      companyDescription: 'This is a company description',
      companyPhoneNumber: 'This is a company phone number',
      companyEmail: 'This is a company email',
      companyFax: 'This is a company fax',
      companyAddress: 'This is a company address',
      companyURL: 'This is a company URL',
      companySlug: 'This is a company slug',
    ),
    companyID: 2,
    jobTitle: 'Python Developer',
    jobDescription: 'This is a job description',
    jobReference: 'This is a job reference',
    jobWage: '1000',
    jobType: JobType(
      jobTypeID: 2,
      jobTypeName: 'This is a job type name',
    ),
    jobContract: JobContract(
      jobContractID: 2,
      jobContractName: 'This is a job contract name',
    ),
    jobLocation: JobLocation(
      jobLocationID: 2,
      jobLocationName: 'This is a job location name',
    ),
    publishedDate: '2021-01-01',
    updatedDate: '2021-01-01',
    jobSlug: 'This is a job slug',
  ),

  JobPost(
    company: Company(
      companyID: 3,
      companyName: 'Apple',
      logoURL: 'https://images.unsplash.com/photo-1567446537708-ac4aa75c9c28?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      companyDescription: 'This is a company description',
      companyPhoneNumber: 'This is a company phone number',
      companyEmail: 'This is a company email',
      companyFax: 'This is a company fax',
      companyAddress: 'This is a company address',
      companyURL: 'This is a company URL',
      companySlug: 'This is a company slug',
    ),
    companyID: 3,
    jobTitle: 'C++ Developer',
    jobDescription: 'This is a job description',
    jobReference: 'This is a job reference',
    jobWage: '1000',
    jobType: JobType(
      jobTypeID: 3,
      jobTypeName: 'This is a job type name',
    ),
    jobContract: JobContract(
      jobContractID: 3,
      jobContractName: 'This is a job contract name',
    ),
    jobLocation: JobLocation(
      jobLocationID: 3,
      jobLocationName: 'This is a job location name',
    ),
    publishedDate: '2021-01-01',
    updatedDate: '2021-01-01',
    jobSlug: 'This is a job slug',
  ),

  JobPost(
    company: Company(
      companyID: 4,
      companyName: 'Orange',
      logoURL: 'https://images.unsplash.com/photo-1560622496-c49bec679e71?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
      companyDescription: 'This is a company description',
      companyPhoneNumber: 'This is a company phone number',
      companyEmail: 'This is a company email',
      companyFax: 'This is a company fax',
      companyAddress: 'This is a company address',
      companyURL: 'This is a company URL',
      companySlug: 'This is a company slug',
    ),
    companyID: 4,
    jobTitle: 'C# Developer',
    jobDescription: 'This is a job description',
    jobReference: 'This is a job reference',
    jobWage: '1000',
    jobType: JobType(
      jobTypeID: 4,
      jobTypeName: 'This is a job type name',
    ),
    jobContract: JobContract(
      jobContractID: 4,
      jobContractName: 'This is a job contract name',
    ),
    jobLocation: JobLocation(
      jobLocationID: 4,
      jobLocationName: 'This is a job location name',
    ),
    publishedDate: '2021-01-01',
    updatedDate: '2021-01-01',
    jobSlug: 'This is a job slug',
  ),

  JobPost(
    company: Company(
      companyID: 5,
      companyName: 'Pineapple',
      logoURL: 'https://images.unsplash.com/photo-1567446537708-ac4aa75c9c28?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      companyDescription: 'This is a company description',
      companyPhoneNumber: 'This is a company phone number',
      companyEmail: 'This is a company email',
      companyFax: 'This is a company fax',
      companyAddress: 'This is a company address',
      companyURL: 'This is a company URL',
      companySlug: 'This is a company slug',
    ),
    companyID: 5,
    jobTitle: 'Ruby Developer',
    jobDescription: 'This is a job description',
    jobReference: 'This is a job reference',
    jobWage: '1000',
    jobType: JobType(
      jobTypeID: 5,
      jobTypeName: 'This is a job type name',
    ),
    jobContract: JobContract(
      jobContractID: 5,
      jobContractName: 'This is a job contract name',
    ),
    jobLocation: JobLocation(
      jobLocationID: 5,
      jobLocationName: 'This is a job location name',
    ),
    publishedDate: '2021-01-01',
    updatedDate: '2021-01-01',
    jobSlug: 'This is a job slug',
  ),

  JobPost(
    company: Company(
      companyID: 6,
      companyName: 'Strawberry',
      logoURL: 'https://images.unsplash.com/photo-1560622496-c49bec679e71?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
      companyDescription: 'This is a company description',
      companyPhoneNumber: 'This is a company phone number',
      companyEmail: 'This is a company email',
      companyFax: 'This is a company fax',
      companyAddress: 'This is a company address',
      companyURL: 'This is a company URL',
      companySlug: 'This is a company slug',
    ),
    companyID: 6,
    jobTitle: 'Java Developer',
    jobDescription: 'This is a job description',
    jobReference: 'This is a job reference',
    jobWage: '1000',
    jobType: JobType(
      jobTypeID: 6,
      jobTypeName: 'This is a job type name',
    ),
    jobContract: JobContract(
      jobContractID: 6,
      jobContractName: 'This is a job contract name',
    ),
    jobLocation: JobLocation(
      jobLocationID: 6,
      jobLocationName: 'This is a job location name',
    ),
    publishedDate: '2021-01-01',
    updatedDate: '2021-01-01',
    jobSlug: 'This is a job slug',
  ),

  JobPost(
    company: Company(
      companyID: 7,
      companyName: 'Banana',
      logoURL: 'https://images.unsplash.com/photo-1567446537708-ac4aa75c9c28?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      companyDescription: 'This is a company description',
      companyPhoneNumber: 'This is a company phone number',
      companyEmail: 'This is a company email',
      companyFax: 'This is a company fax',
      companyAddress: 'This is a company address',
      companyURL: 'This is a company URL',
      companySlug: 'This is a company slug',
    ),
    companyID: 7,
    jobTitle: 'Python Developer',
    jobDescription: 'This is a job description',
    jobReference: 'This is a job reference',
    jobWage: '1000',
    jobType: JobType(
      jobTypeID: 7,
      jobTypeName: 'This is a job type name',
    ),
    jobContract: JobContract(
      jobContractID: 7,
      jobContractName: 'This is a job contract name',
    ),
    jobLocation: JobLocation(
      jobLocationID: 7,
      jobLocationName: 'This is a job location name',
    ),
    publishedDate: '2021-01-01',
    updatedDate: '2021-01-01',
    jobSlug: 'This is a job slug',
  ),

  JobPost(
    company: Company(
      companyID: 8,
      companyName: 'Carrot',
      logoURL: 'https://images.unsplash.com/photo-1560622496-c49bec679e71?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
      companyDescription: 'This is a company description',
      companyPhoneNumber: 'This is a company phone number',
      companyEmail: 'This is a company email',
      companyFax: 'This is a company fax',
      companyAddress: 'This is a company address',
      companyURL: 'This is a company URL',
      companySlug: 'This is a company slug',
    ),
    companyID: 8,
    jobTitle: 'PHP Developer',
    jobDescription: 'This is a job description',
    jobReference: 'This is a job reference',
    jobWage: '1000',
    jobType: JobType(
      jobTypeID: 8,
      jobTypeName: 'This is a job type name',
    ),
    jobContract: JobContract(
      jobContractID: 8,
      jobContractName: 'This is a job contract name',
    ),
    jobLocation: JobLocation(
      jobLocationID: 8,
      jobLocationName: 'This is a job location name',
    ),
    publishedDate: '2021-01-01',
    updatedDate: '2021-01-01',
    jobSlug: 'This is a job slug',
  ),

  JobPost(
    company: Company(
      companyID: 9,
      companyName: 'Lettuce',
      logoURL: 'https://images.unsplash.com/photo-1567446537708-ac4aa75c9c28?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      companyDescription: 'This is a company description',
      companyPhoneNumber: 'This is a company phone number',
      companyAddress: 'This is a company address',
      companyFax: 'This is a company fax',
      companyEmail: 'This is a company email',
      companyURL: 'This is a company URL',
      companySlug: 'This is a company slug',
    ),
    companyID: 9,
    jobTitle: 'Front End Developer',
    jobDescription: 'This is a job description',
    jobReference: 'This is a job reference',
    jobWage: '1000',
    jobType: JobType(
      jobTypeID: 9,
      jobTypeName: 'This is a job type name',
    ),
    jobContract: JobContract(
      jobContractID: 9,
      jobContractName: 'This is a job contract name',
    ),
    jobLocation: JobLocation(
      jobLocationID: 9,
      jobLocationName: 'This is a job location name',
    ),
    publishedDate: '2021-01-01',
    updatedDate: '2021-01-01',
    jobSlug: 'This is a job slug',
  ),

  JobPost(
    company: Company(
      companyID: 10,
      companyName: 'Fish',
      logoURL: 'https://images.unsplash.com/photo-1560622496-c49bec679e71?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
      companyDescription: 'This is a company description',
      companyPhoneNumber: 'This is a company phone number',
      companyEmail: 'This is a company email',
      companyURL: 'This is a company URL',
      companyFax: 'This is a company fax',
      companyAddress: 'This is a company address',
      companySlug: 'This is a company slug',
    ),
    companyID: 10,
    jobTitle: 'Back End Developer',
    jobDescription: 'This is a job description',
    jobReference: 'This is a job reference',
    jobWage: '1000',
    jobType: JobType(
      jobTypeID: 10,
      jobTypeName: 'This is a job type name',
    ),
    jobContract: JobContract(
      jobContractID: 10,
      jobContractName: 'This is a job contract name',
    ),
    jobLocation: JobLocation(
      jobLocationID: 10,
      jobLocationName: 'This is a job location name',
    ),
    publishedDate: '2021-01-01',
    updatedDate: '2021-01-01',
    jobSlug: 'This is a job slug',
  ),

  JobPost(
    company: Company(
      companyID: 11,
      companyName: 'Not Apple',
      logoURL: 'https://images.unsplash.com/photo-1567446537708-ac4aa75c9c28?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
      companyDescription: 'This is a company description',
      companyPhoneNumber: 'This is a company phone number',
      companyEmail: 'This is a company email',
      companyFax: 'This is a company fax',
      companyAddress: 'This is a company address',
      companyURL: 'This is a company URL',
      companySlug: 'This is a company slug',
    ),
    companyID: 11,
    jobTitle: 'Full Stack Developer',
    jobDescription: 'This is a job description',
    jobReference: 'This is a job reference',
    jobWage: '1000',
    jobType: JobType(
      jobTypeID: 11,
      jobTypeName: 'This is a job type name',
    ),
    jobContract: JobContract(
      jobContractID: 11,
      jobContractName: 'This is a job contract name',
    ),
    jobLocation: JobLocation(
      jobLocationID: 11,
      jobLocationName: 'This is a job location name',
    ),
    publishedDate: '2021-01-01',
    updatedDate: '2021-01-01',
    jobSlug: 'This is a job slug',
  ),

  JobPost(
    company: Company(
      companyID: 12,
      companyName: 'Not Google',
      logoURL: 'https://images.unsplash.com/photo-1560622496-c49bec679e71?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
      companyDescription: 'This is a company description',
      companyPhoneNumber: 'This is a company phone number',
      companyEmail: 'This is a company email',
      companyURL: 'This is a company URL',
      companyFax: 'This is a company fax',
      companyAddress: 'This is a company address',
      companySlug: 'This is a company slug',
    ),
    companyID: 12,
    jobTitle: 'Front End Developer',
    jobDescription: 'This is a job description',
    jobReference: 'This is a job reference',
    jobWage: '1000',
    jobType: JobType(
      jobTypeID: 12,
      jobTypeName: 'This is a job type name',
    ),
    jobContract: JobContract(
      jobContractID: 12,
      jobContractName: 'This is a job contract name',
    ),
    jobLocation: JobLocation(
      jobLocationID: 12,
      jobLocationName: 'This is a job location name',
    ),
    publishedDate: '2021-01-01',
    updatedDate: '2021-01-01',
    jobSlug: 'This is a job slug',
  ),
];