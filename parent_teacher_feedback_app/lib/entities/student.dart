class Student {
  //int id;
  late String studentName;
  late String studentClass;
  late String studentDorm;

  Student(
    //required this.id,
    this.studentName,
    this.studentClass,
    this.studentDorm,
  );
  Student.fromJson(Map<String, dynamic> json) {
    studentName = json['studentName'];
    studentClass = json['studentClass'];
    studentDorm = json['studentDorm'];
  }
}