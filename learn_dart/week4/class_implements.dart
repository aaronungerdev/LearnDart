//implements
void main() {}

abstract class IStudent {
  IStudent(this.name, this.age, this.schoolID);
  final String name;
  final int age;

  void saySomething() {
    print('stuff');
  }

  int schoolID;
}

class Students implements IStudent {
  Students(this.name, this.age, this.schoolID);
  final String name;
  final int age;

  @override
  void saySomething() {
    // TODO: implement saySomething
  }

  @override
  int schoolID;
}

class Students2 implements IStudent {
  Students2(this.name, this.age, this.schoolID);
  final String name;
  final int age;

  @override
  void saySomething() {
    // TODO: implement saySomething
  }

  @override
  int schoolID;
}
