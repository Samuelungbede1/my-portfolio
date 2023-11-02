class User {
  final String name;
  final String title;
  final String profilePhoto;
  final String emailAddress;
  final String phoneNumber;
  final String houseAddress;
  final String aboutMe;
  final List<Certification> certifications;
  final List<PastProject> pastProjects;
  final List<Education> education;
  final List<String> skills;

  User({
    required this.name,
    required this.title,
    required this.profilePhoto,
    required this.emailAddress,
    required this.phoneNumber,
    required this.houseAddress,
    required this.aboutMe,
    required this.certifications,
    required this.pastProjects,
    required this.education,
    required this.skills,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    final List<dynamic> certificationsJson = json['certifications'];
    final List<dynamic> pastProjectsJson = json['pastProjects'];
    final List<dynamic> educationJson = json['education'];

    final List<Certification> certifications = certificationsJson
        .map((certJson) => Certification.fromJson(certJson))
        .toList();

    final List<PastProject> pastProjects = pastProjectsJson
        .map((projJson) => PastProject.fromJson(projJson))
        .toList();

    final List<Education> education = educationJson
        .map((eduJson) => Education.fromJson(eduJson))
        .toList();

    return User(
      name: json['name'] ?? '',
      title: json['title'] ?? ' ',
      profilePhoto: json['profilePhoto'] ?? '',
      emailAddress: json['emailAddress'] ?? '',
      phoneNumber: json['phoneNumber'] ?? '',
      houseAddress: json['houseAddress'] ?? '',
      aboutMe: json['aboutMe'] ?? '',
      certifications: certifications,
      pastProjects: pastProjects,
      education: education,
      skills: List<String>.from(json['skills']),
    );
  }
}

class Certification {
  final String title;
  final String image;

  Certification({required this.title, required this.image});

  factory Certification.fromJson(Map<String, dynamic> json) {
    return Certification(
      title: json['title'],
      image: json['image'],
    );
  }
}

class PastProject {
  final String title;
  final String description;

  PastProject({required this.title, required this.description});

  factory PastProject.fromJson(Map<String, dynamic> json) {
    return PastProject(
      title: json['title'],
      description: json['description'],
    );
  }
}

class Education {
  final String schoolName;
  final String certificateEarned;
  final int year;
  final String grade;

  Education({
    required this.schoolName,
    required this.certificateEarned,
    required this.year,
    required this.grade,
  });

  factory Education.fromJson(Map<String, dynamic> json) {
    return Education(
      schoolName: json['schoolName'] ??'',
      certificateEarned: json['certificateEarned'] ?? '',
      year: json['year'] ?? '',
      grade: json['grade'] ?? '',
    );
  }
}
