void outer(String name, String id) {
  String inner() {
    var firstName = name.split(' ')[0];
    var temp = '';
    bool foundSpace = false;

    for (var i = 0; i < name.length; i++) {
      if (foundSpace) {
        temp = name[i];
        break;
      }
      if (name[i] == ' ') {
        foundSpace = true;
      }
    }
    var fullName = '$temp.$firstName';
    return fullName;
  }

  print("Hello Agent ${inner()} your id is $id");
}