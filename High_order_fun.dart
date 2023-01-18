main() {
  printChefsName(getChefFromDb, 4);

  int name;

}

void printChefsName(String Function(int id) getChefFromDb, int id) {
  String name = getChefFromDb(id);
  print(name);
}

String getChefFromDb(int id) {
  switch (id) {
    case 1:
      return "Shreyash";
      break;
    case 2:
      return "Krishna";
      break;
    case 3:
      return "Aarya";
      break;
    default:
      return "No name found";
  }
}