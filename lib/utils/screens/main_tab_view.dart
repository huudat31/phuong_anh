import 'package:flutter/material.dart';
import 'package:phuonganh/utils/screens/home_screen.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 0;
  PageStorageBucket pageStorageBucket = PageStorageBucket();
  Widget currentPage = HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: TColor.gray50,
      body: SafeArea(
        child: Stack(
          children: [
            PageStorage(bucket: pageStorageBucket, child: currentPage),
            Column(
              children: [
                const Spacer(),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 8),
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectTab = 0;
                                      currentPage = HomeScreen();
                                    });
                                  },
                                  icon: Image.asset(
                                    'assets/img/home.png',
                                    width: 20,
                                    height: 20,
                                    // color: selectTab == 0
                                    //     ? TColor.white
                                    //     : TColor.gray30,
                                  )),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectTab = 1;
                                      currentPage = HomeScreen();
                                    });
                                  },
                                  icon: Image.asset(
                                    'assets/img/budgets.png',
                                    width: 20,
                                    height: 20,
                                    // color: selectTab == 1
                                    //     ? TColor.white
                                    //     : TColor.gray30,
                                  )),
                              const SizedBox(
                                width: 50,
                                height: 50,
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectTab = 2;
                                      currentPage = HomeScreen();
                                    });
                                  },
                                  icon: Image.asset(
                                    'assets/img/calendar.png',
                                    width: 20,
                                    height: 20,
                                    // color: selectTab == 2
                                    //     ? TColor.white
                                    //     : TColor.gray30,
                                  )),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      selectTab = 3;
                                      currentPage = HomeScreen();
                                    });
                                  },
                                  icon: Image.asset(
                                    'assets/img/creditcards.png',
                                    width: 20,
                                    height: 20,
                                    // color: selectTab == 3
                                    //     ? TColor.white
                                    //     : TColor.gray30,
                                  ))
                            ],
                          )
                        ],
                      ),
                    ])),
              ],
            )
          ],
        ),
      ),
    );
  }
}
