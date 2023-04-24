import 'package:filter_it/data_models/company.dart';
import 'package:filter_it/data_models/job_contract.dart';
import 'package:filter_it/data_models/job_location.dart';
import 'package:filter_it/data_models/job_post.dart';

import '../data_models/job_type.dart';

class OscorpPostStub {
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
    static JobPost fav3 = JobPost(
        company: Company(companyID: "502",
            companyName: "Oscorp",
            logoURL: "https://cdn.dribbble.com/users/2183668/screenshots/16714178/media/a0ed3f9906420037d48ecf478e2b2103.png?compress=1&resize=400x300&vertical=top",
            companyDescription: "StubCompanyDescription",
            companyAddress: "StubCompanyAdress",
            companyPhoneNumber: "StubCompanyPhoneNumber",
            companyFax: "StubCompanyFax",
            companyEmail: "StubCompanyEmail",
            companyURL: "StubCompanyUrl",
            companySlug: "StubCompanySlug"),
        companyID: 1,
        jobTitle: "Oscorp",
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