import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:filter_it/data_models/review.dart';

class ReviewService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addReview(Review review) {
    return _db.collection('reviews').add(review.toMap());
  }

  Stream<double> getJobAverageRatingStream(String jobId) {
    return _db
        .collection('reviews')
        .where('jobId', isEqualTo: jobId)
        .snapshots()
        .map((querySnapshot) {
      if (querySnapshot.size == 0) {
        return 0.0;
      }

      final totalRatings = querySnapshot.docs
          .map((doc) => Review.fromMap(doc.data(), doc.id).rating)
          .reduce((value, element) => value + element);

      return totalRatings / querySnapshot.size;
    });
  }

  Stream<List<Review>> getJobReviewsStream(String jobId) {
    return _db
        .collection('reviews')
        .where('jobId', isEqualTo: jobId)
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((doc) => Review.fromMap(doc.data(), doc.id)).toList();
    });
  }
}