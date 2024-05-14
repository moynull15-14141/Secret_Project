import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  final List<Map<String, dynamic>> allUsers = [
    {
      "id": 1,
      "name": "Physics",
    },
    {
      "id": 2,
      "name": "BL Kumawat",
    },
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    foundUsers = allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = allUsers;
    } else {
      results = allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(49),
      elevation: 3.0, // Set here what you wish!
      shadowColor: Color.fromARGB(255, 1, 60, 64),
      child: TextField(
        onChanged: (value) => runFilter(value),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(255, 241, 255, 186),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
          hintText: 'Search',
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: const Icon(
              Icons.search,
              size: 28,
              color: Color.fromARGB(255, 1, 60, 64),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(49.0),
          ),
        ),
      ),
    );
  }
}
