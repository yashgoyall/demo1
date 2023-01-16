//i am getting data inthe form of  a string
//"Paneer butter masala | 300.5"
//writw a fn to parse name and amount and
//print "item_name is of cost  item_cost"
void main() {
  // using loops

/* String myInitialString = "Paneer Butter Masala | 300.5";
  int i;
  String name = "";
  for (i = 0; i < myInitialString.length; i++) {
    if (myInitialString[i] == "|") {
      break;
    } else {
      name += myInitialString[i];
    }
  }
  String price = "";
  i++;
  for (; i < myInitialString.length; i++) {
    price += myInitialString[i];
  }

  print("$name is of cost $price."); 
  print(makeFullNameARgs(lastName: "goyal", firstName: "yash"));
  print(makeFullNamePro("Yash", "goyal")); 

// list with keywords
  List<String> myStrList = ["Cake", "Pasta", "Tastry"];
  myStrList.add("Sweet");
  myStrList.sort();
  print(myStrList);
  print((myStrList.length));
  myStrList.forEach((element) {
    print(element);
  });

  //map keyword
  List<String> updatedList = myStrList.map((e) => e + " veg").toList();
  print(updatedList);
  List<int> updatedListLength = myStrList.map((e) => e.length).toList();
  print(updatedListLength); 

  //String basics

  String name = "    yash  ";
  print(name.trim());
  String c = " yash   | goyal ";
  List<String> csplitted = c.split("|");
  print(csplitted); */

//Ptractice question / use split, trim , map
// List<String> strList = ["foodname | foodprice", ""]
// print
// put a discount of 20% for each food item
// foodname1 is of foodcost1, and discounted amount is discountedamount1
// foodname2 is of foodcost2, and discounted amount is discountedamount1
  mySolution();
}

// Functions
String makeFullNamePro(String firstName, String secondName) =>
    "$firstName $secondName";
String makeFullNameARgs(
        {String tag = "Er.", String? firstName, String? lastName}) =>
    "$tag $firstName $lastName";

void mySolution() {
  List<String> strList = ["Pasta | 40.5 ", "Pizza | 700", "Macroni | 67.5"];

  List<String> myAns = strList.map((e) {
    String name = e.split(" | ")[0].trim();
    double price = double.parse(e.split(" | ")[1].trim());
    double discountedPrice = 0.8 * price;
    return ("$name is of $price and the discounted amount is $discountedPrice");
  }).toList();

  print(myAns);
}
