/*List<String> windowScreens = [“zoom”, “music”,”chrome”,”notes”];
Now 0th Index means Screen is at last and most visible to user, and nth index means screen is at n+1 th position from user view
Implement methods
pullScreenToFront(currentIndex)
moveScreen(currentIndex, destinationIndex)
deleteScreen(index)
addScreenToFront(String windowName)
findScreenAtIndex(index)

pullScreenToFront(1)
moveScreen(1, 3)
deleteScreen(6)
deleteScreen(2)
addScreenToFront("FIFA 23")
pullScreenToFront(1)
addScreenToFront("NFS")
moveScreen(1, 3)findScreenAtIndex(2)*/

void main() {
  List<String> windowScreens = ["zoom", "music", "code", "chrome", "notes"];
  print(
      "Element at 2 is ${windowScreens.elementAt(2)}"); // this is to access element ina alist

  void pullScreenToFront(int currentIndex) {
    String removedElement = windowScreens.removeAt(currentIndex);
    windowScreens.insert(0, removedElement);
    print("Element at first index 0 ${windowScreens.elementAt(0)}");
  }

  pullScreenToFront(3);
  print(windowScreens);

  void moveScreen(currentIndex, destinationIndex) {
    String removedElement = windowScreens.removeAt(currentIndex);
    windowScreens.insert(destinationIndex, removedElement);
    print(windowScreens);
  }

  moveScreen(3, 1);

  void deleteScreen(CurrentIndex) {
    String deleteElement = windowScreens.removeAt(CurrentIndex);
    print(windowScreens);
  }

  deleteScreen(4);

  void addScreenToFront(String windowName) {
    windowScreens.remove(windowName);
    windowScreens.insert(0, windowName);
    print(windowScreens);
  }

  addScreenToFront("notes");

  void findScreenAtIndex(index) {
    String screenIndex = windowScreens.removeAt(index);
    print(screenIndex);
  }

  findScreenAtIndex(3);
}
