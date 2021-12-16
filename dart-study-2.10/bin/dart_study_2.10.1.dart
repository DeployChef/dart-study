void main(List<String> arguments) {
  var student = Student(name: "Vlad", subName: "Titov", currentCourse: 1, yearOfAdmission: DateTime.now());
  var info = student.toString();
  print(info);
}

class Student extends User{
  DateTime yearOfAdmission;
  int currentCourse;

  Student({
    required name,
    required subName,
    required this.yearOfAdmission,
    required this.currentCourse,
  }) : super(name: name, subName: subName);

  @override
  String toString() {
    var userInfo = super.toString();
    return "$userInfo, Course $currentCourse, Year ${yearOfAdmission.year}";
  }
}

class User{
  String name;
  String subName;

  User({
    required this.name,
    required this.subName,
  });

  @override
  String toString() {
    // TODO: implement toString
    return "Name is $name, Subname is $subName";
  }
}