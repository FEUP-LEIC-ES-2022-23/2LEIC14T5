

import 'package:filter_it/data_models/company.dart';
import 'package:filter_it/data_models/job_contract.dart';
import 'package:filter_it/data_models/job_location.dart';
import 'package:filter_it/data_models/job_post.dart';

import '../data_models/job_type.dart';

class JobPostStub {
    static List<JobType> jobTypesList = [
        JobType(
            jobTypeID: "jobTypeIdStub",
            jobTypeName: "typenameStub",
        ),
    ];
    static List<JobContract> jobContractsList = [
        JobContract(
            jobContractID: "jobContractIdStub",
            jobContractName: "jobContractNameStub",
        ),
    ];
    static List<JobLocation> jobLocationList = [
        JobLocation(
            jobLocationID: "jobLocationIdStub",
            jobLocationName: "jobLocationNameStub",
        ),
    ];
    static JobPost jobpostStub = JobPost(
        company: Company(companyID: "-1",
            companyName: "Stub Company Name",
            logoURL: "https://images.unsplash.com/photo-1541781774459-bb2af2f05b55?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80L",
            companyDescription: "StubCompanyDescription",
            companyAddress: "StubCompanyAdress",
            companyPhoneNumber: "StubCompanyPhoneNumber",
            companyFax: "StubCompanyFax",
            companyEmail: "StubCompanyEmail",
            companyURL: "StubCompanyUrl",
            companySlug: "StubCompanySlug"),
        companyID: 1,
        jobTitle: "StubJobTitle",
        jobDescription: "StubJobDescription",
        jobReference: "StubJobReference",
        jobWage: "StubJobWage",
        jobTypes: jobTypesList,
        jobContracts: jobContractsList,
        jobLocations: jobLocationList,
        publishedDate: "StubPublishedDate",
        updatedDate: "StubUpdatedDate",
        jobSlug: "StubJobSlug",
        jobID: "-1");
}
