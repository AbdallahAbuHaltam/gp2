import 'package:derbyjo/screens/categories.dart';
import 'package:derbyjo/screens/profile.dart';
import 'package:derbyjo/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import '../../utils/constants.dart';
import '../../widgets/bottom_menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Top Bar
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Profile()),
                            );
                          },
                          child: const Image(
                            image: AssetImage('images/pro.png'),
                          ),
                        ),
                      ),
                      //Search
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          width: 210,
                          height: 45,
                          decoration: BoxDecoration(
                            color: mBackgroundColor,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                color: boxColor,
                                offset: Offset(0, 10),
                                blurRadius: 20,
                              ),
                            ],
                          ),
                          child: Row(
                            children: const [
                              Padding(
                                padding:
                                    EdgeInsets.only(bottom: 11.0, left: 10.0),
                                child: Image(
                                  height: 21,
                                  image: Svg('icons/search.svg'),
                                  color: mRedColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Image(
                          image: Svg('icons/notification.svg'),
                          height: 30,
                          color: mRedColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Text(
                        category,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, right: 5),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: mRedColor,
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Categories()),
                          );
                        },
                        child: const Text(seeAll),
                      ),
                    ),
                  ],
                ),
                //Category
                Container(
                  height: 134,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: mBackgroundColor,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 30,
                        color: shadowColor,
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: null,
                          child: Column(
                            children: <Widget>[
                              Image.asset('images/football.png'),
                              const Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  'Football',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        GestureDetector(
                          onTap: null,
                          child: Column(
                            children: <Widget>[
                              Image.asset('images/basketball.png'),
                              const Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  'Basketball',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        GestureDetector(
                          onTap: null,
                          child: Column(
                            children: <Widget>[
                              Image.asset('images/tennis.png'),
                              const Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  'Tennis',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        GestureDetector(
                          onTap: null,
                          child: Column(
                            children: <Widget>[
                              Image.asset('images/paddel.png'),
                              const Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  'Padel',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        GestureDetector(
                          onTap: null,
                          child: Column(
                            children: <Widget>[
                              Image.asset('images/swimmingg.png'),
                              const Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  'Swimming',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //Suggested
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        suggested,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, right: 5),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: mRedColor,
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        onPressed: () {},
                        child: const Text(seeAll),
                      ),
                    ),
                  ],
                ),
                // List Card
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: mRedColor,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:  BottomMenu(),
    );
  }
}
