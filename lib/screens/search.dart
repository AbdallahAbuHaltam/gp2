import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:derbyjo/models/search.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  static List<SearchModel> stadiumList = [
    SearchModel("oxford school stadium", 1),
    SearchModel("Al khader school stadium", 2),
    SearchModel("Al Jazeera Schools Stadium", 3),
    SearchModel("Alquaat Almusalahat stadium", 4),
  ];
  List<SearchModel> display_list = List.from(stadiumList);
  void updateList(String value) {
    setState(() {
      display_list = stadiumList
          .where((element) =>
              element.stadiumName!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 330, top: 30),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: mBlackColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 200,
                top: 20,
              ),
              child: Text(
                "Search for Booking",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextField(
                  onChanged: (value) => updateList(value),
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 237, 195, 192),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      hintText: "eg: oxford stadium ",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                )),
            Expanded(
                child: display_list.length == 0
                    ? Center(
                        child: Text(
                          "No result found !",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    : ListView.builder(
                        itemBuilder: (context, index) => ListTile(
                          title: Text(display_list[index].stadiumName!),
                          contentPadding: EdgeInsets.only(left: 50, bottom: 20),
                          subtitle:
                              Text('ID :${display_list[index].stadiumID!}'),
                        ),
                        itemCount: display_list.length,
                      ))
          ],
        ),
      ),
    );
  }
}
