// // // // // // // // // CLASSES // // // // // // // // //

class Student {
  String forenames = "";
  String lastnames = "";
  String email = "";
  String firstName = "";
  String fullName = "";
  String dob = "";
  Degree degree;
}

class Lecturer {
  String forenames = "";
  String lastnames = "";
  String email = "";
  String firstName = "";
  String fullName = "";
  String dob = "";
  List<Degree> degree = [];
}

class Degree {
  String name = "";
  int durationYears = 3;
  List<Course> courses = [];
  Lecturer lecturer = Lecturer();
}

class Course {
  String name = "";
  int durationMonths = 3;
  Lecturer lecturer;
  Degree degree;
}
