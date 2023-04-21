import 'package:filter_it/data_models/company.dart';
import 'package:filter_it/data_models/job_contract.dart';
import 'package:filter_it/data_models/job_location.dart';
import 'package:filter_it/data_models/job_post.dart';

import '../data_models/job_type.dart';

class StarkPostStub {
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
    static JobPost fav1 = JobPost(
        company: Company(companyID: "-1",
            companyName: "Stark Industries",
            logoURL: "https://static.wikia.nocookie.net/universocinematograficomarvel/images/9/93/TVM-IM-01_18192_zoom.jpg/revision/latest?cb=20150615134136&path-prefix=pt",
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