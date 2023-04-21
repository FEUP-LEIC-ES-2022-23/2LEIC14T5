import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:filter_it/custom_widgets/review_builder.dart';
import 'package:filter_it/data_models/job_post.dart';
import 'package:filter_it/data_models/review_service.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../data_models/review.dart';

class BigJobPostBuilder extends StatelessWidget{
  final JobPost jobPost;
  const BigJobPostBuilder({
    Key? key,
    required this.jobPost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final reviewService = ReviewService();
    String companyNumber = jobPost.company.companyPhoneNumber;
    String companyEmail = jobPost.company.companyEmail;
    String companyAddress = jobPost.company.companyAddress;
    String companyContacts = "Phone number: ${companyNumber == "null" ? "No phone number specified" : companyNumber}\n"
        "Email: ${companyEmail == "null" ? "No email specified" : companyEmail}\n"
        "Address: ${companyAddress == "null" ? "No address specified" : companyAddress}";
    String companyDesc = jobPost.company.companyDescription;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(jobPost.jobTitle),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container( // First Container
              alignment: Alignment.center,
              height: 500,
              width:  350,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),

              child: Container(
                margin: const EdgeInsets.only(left: 10.0,right: 10.0),
                child: Column(
                  children:[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.network(
                          jobPost.company.logoURL,
                          width: 70,
                          height: 70,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          jobPost.jobTitle,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          if (jobPost.jobTypes.isNotEmpty)
                            for (var item in jobPost.jobTypes) Text(item.jobTypeName)
                        ],
                      ),
                    ),
                    const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Qualifications:",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                          jobPost.jobDescription == "null" ? "No qualifications specified" : jobPost.jobDescription
                      ),
                    ),
                    const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "About us:",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    ),
                    Container( // SCROLL ABOUT US
                      padding: const EdgeInsets.only(top: 3,bottom: 3),
                      height: 150,
                      child: SingleChildScrollView(
                          child: ReadMoreText(companyDesc == "null" ? "No company description specified" : companyDesc,trimLines: 8,
                            textAlign: TextAlign.justify,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: " Show More ",
                            trimExpandedText: " Show Less ",
                            lessStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            moreStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),
                    ),
                    const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Contact us:",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container( // SCROLL ABOUT US
                        padding: const EdgeInsets.only(top: 3,bottom: 3),
                        height: 100,
                        child: SingleChildScrollView(
                            child: ReadMoreText(companyContacts == "null" ? "No company contacts specified" : companyContacts,trimLines: 4,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: " Show More ",
                              trimExpandedText: " Show Less ",
                              lessStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              moreStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container( // Second Container
                margin: const EdgeInsets.only(top:20.0),
                height: 200,
                width:  350,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children:[
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Reviews",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                StreamBuilder<double>(
                  stream: reviewService.getJobAverageRatingStream(jobPost.jobID),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      double averageRating = snapshot.data!;
                      return Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          'Average rating: ${averageRating.toStringAsFixed(1)}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return const Text('Error getting average rating');
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReviewBuilder(jobID: jobPost.jobID),
                          ),
                        );
                      },
                      child: const Text('See reviews'),
                    ),
                  ],
                )
            )
          ],
        ),
      ) ,
    );
  }
}