import 'package:filter_it/data_models/company.dart';
import 'package:filter_it/data_models/job_contract.dart';
import 'package:filter_it/data_models/job_location.dart';
import 'package:filter_it/data_models/job_post.dart';

import '../data_models/job_type.dart';

class WaynePostStub {
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
    static JobPost fav2 = JobPost(
        company: Company(companyID: "-1",
            companyName: "Wayne Enterprises, Inc.",
            logoURL: "https://static.wikia.nocookie.net/dccu/images/a/ae/Wayne_Enterprises_logo.png/revision/latest?cb=20201015164616",
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
        jobSlug: "StubJobSlug");
}