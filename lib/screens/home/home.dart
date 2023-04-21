import 'package:derbyjo/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:derbyjo/data/data.dart';
import '../../utils/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();
  final Data _data = Data();

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
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/pro.png'),
                        radius: 25,
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
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, right: 5),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: mRedColor,
                          textStyle: const TextStyle(fontSize: 17),
                        ),
                        onPressed: () {},
                        child: const Text(seeAll),
                      ),
                    ),
                  ],
                ),
                //Category
                Container(
                  height: 150,
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(10, 15, 5, 5),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: null,
                        child: Image.asset('images/football.png'),
                      ),
                      GestureDetector(
                        onTap: null,
                        child: Image.asset('images/basketball.png'),
                      ),GestureDetector(
                        onTap: null,
                        child: Image.asset('images/tennis.png'),
                      ),GestureDetector(
                        onTap: null,
                        child: Image.asset('images/padel.png'),
                      ),GestureDetector(
                        onTap: null,
                        child: Image.asset('images/swimmingg.png'),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
