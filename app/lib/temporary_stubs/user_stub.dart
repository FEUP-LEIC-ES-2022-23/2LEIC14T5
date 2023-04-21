import 'package:filter_it/data_models/user.dart';

class UserStub{
  static User userStub = User.m(
      name: "Stub User",
      email: "stubuser@email.com",
      about: "I'm a stub user, just for demonstration purposes! I hope you are enjoying this app and that it will help you find a job!",
      profilePictureURL: "https://images.unsplash.com/photo-1597626133663-53df9633b799?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
      favouritesCount: 0,
      ratingsCount: 0,
      reviewsCount: 0,
      facebookURL: "",
      linkedinURL: "https://pt.linkedin.com/",
      twitterURL: "",
      instagramURL: ""
  );
}