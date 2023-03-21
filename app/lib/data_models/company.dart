class Company {
  final int companyID;
  final String companyName;
  final String logoURL;
  final String companyDescription;
  final String companyAddress;
  final String companyPhoneNumber;
  final String companyFax;
  final String companyEmail;
  final String companyURL;
  final String companySlug;

  Company({
    required this.companyID,
    required this.companyName,
    required this.logoURL,
    required this.companyDescription,
    required this.companyAddress,
    required this.companyPhoneNumber,
    required this.companyFax,
    required this.companyEmail,
    required this.companyURL,
    required this.companySlug,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      companyID: json['id'] ?? 99999,
      companyName: json['name'] ?? "",
      logoURL: json['logo'] ?? "",
      companyDescription: json['description'] ?? "",
      companyAddress: json['address'] ?? "",
      companyPhoneNumber: json['phone'] ?? "",
      companyFax: json['fax'] ?? "",
      companyEmail: json['email'] ?? "",
      companyURL: json['url'] ?? "",
      companySlug: json['slug'] ?? "",
    );
  }
}