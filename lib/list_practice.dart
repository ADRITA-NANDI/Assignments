
  //string name1= "Adrita";
  // string name2="Nandi";
  //String name3="Yuthika"
  // string name4="Mouny"
  // WE HAVE TO INPUT THIS ONE BY ONE
  //USING LIST WE CAN GIVE INPUT>>>
  void main() {
    List<String> names = ["Adrita", "Nandi", "Yuthika", "Mouni"];

    for (String n in names) {
      print(n);
    }

    names.sort();

    print("After sorting:");
    for (String n in names) {
      print(n);
    }
  }