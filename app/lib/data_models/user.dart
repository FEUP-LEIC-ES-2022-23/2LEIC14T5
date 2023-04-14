class User{
  String name;
  String email;
  String about;
  String profilePictureURL = "";
  String favouritesCount = "0";
  String ratingsCount = "0";
  String reviewsCount = "0";
  String facebookURL = "";
  String linkedinURL = "";
  String twitterURL = "";
  String instagramURL = "";

  User({
    required this.name,
    required this.email,
    required this.about,
  });

  User.m({
    required this.name,
    required this.email,
    required this.about,
    required this.profilePictureURL,
    required this.favouritesCount,
    required this.ratingsCount,
    required this.reviewsCount,
    required this.facebookURL,
    required this.linkedinURL,
    required this.twitterURL,
    required this.instagramURL,
  });
}