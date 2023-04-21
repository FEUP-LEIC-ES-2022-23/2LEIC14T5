import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../data_models/review.dart';
import '../data_models/review_service.dart';

class ReviewBuilder extends StatefulWidget {
  final String jobID;

  const ReviewBuilder({
    Key? key,
    required this.jobID,
  }) : super(key: key);

  @override
  _ReviewBuilderState createState() => _ReviewBuilderState();
}

class _ReviewBuilderState extends State<ReviewBuilder> {
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
                  return const Text('No reviews yet.');
                }
                final reviews = snapshot.data!;
                reviews.sort((a, b) => b.timestamp.compareTo(a.timestamp));

                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    final review = snapshot.data![index];
                    return ListTile(
                      title: Text(
                        review.comment,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(DateFormat('dd-MM-yyyy HH:mm:ss').format(review.timestamp.toDate())),
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: review.rating == 3 ? Colors.orange :
                          review.rating > 3 ? Colors.green : Colors.red,
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                        child: Text(
                          'Rating: ${review.rating}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
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
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Rating (1-5)',
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        int.tryParse(value) == null ||
                        int.parse(value) < 1 ||
                        int.parse(value) > 5) {
                      return 'Please enter a rating between 1 and 5.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _rating = int.parse(value!);
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Description',
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
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Review review = Review(
                        jobId: widget.jobID,
                        rating: _rating!,
                        comment: _description!,
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
        ],
      ),
    );
  }
}