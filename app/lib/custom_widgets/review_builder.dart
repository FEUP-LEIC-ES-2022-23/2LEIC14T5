import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../data_models/review.dart';
import '../data_models/review_service.dart';

class ReviewBuilder extends StatefulWidget {
  final int jobID;

  const ReviewBuilder({
    Key? key,
    required this.jobID,
  }) : super(key: key);

  @override
  ReviewBuilderState createState() => ReviewBuilderState();
}

class ReviewBuilderState extends State<ReviewBuilder> {
  final _formKey = GlobalKey<FormState>();
  late int _rating;
  late String _description;

  @override
  Widget build(BuildContext context) {
    final reviewService = ReviewService();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Reviews"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<List<Review>>(
              stream: reviewService.getJobReviewsStream(widget.jobID),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }

                if (snapshot.data == null || snapshot.data!.isEmpty) {
                  return const Center(
                    child: Text('No reviews yet.', style: TextStyle(fontSize: 20),),
                  );
                }

                final reviews = snapshot.data!;
                reviews.sort((a, b) => b.timestamp.compareTo(a.timestamp));

                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final review = snapshot.data![index];
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                        elevation: 5,
                        child: ListTile(
                          title: Text(
                            review.comment,
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle: Text(DateFormat('dd-MM-yyyy HH:mm:ss').format(review.timestamp.toDate())),
                          trailing: Text(
                            '${review.rating}/5 ★',
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFFFCB45),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'Leave a review',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(10),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    RatingBar.builder(
                        initialRating: 0,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating){
                          _rating = rating.toInt();

                        }
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Comment',
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: 1,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a description.';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _description = value!;
                      },
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orangeAccent,
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Review review = Review(
                            jobId: widget.jobID,
                            rating: _rating,
                            comment: _description,
                            timestamp: Timestamp.now(),
                          );
                          await reviewService.addReview(review);

                          _formKey.currentState!.reset();

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Review added successfully!'),
                              duration: Duration(seconds: 1),

                            ),
                          );
                        }
                      },
                      child: const Text('Submit Review'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}