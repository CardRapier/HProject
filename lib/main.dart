import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var theme = ThemeData.light().copyWith(
      textTheme: const TextTheme(
    bodySmall: TextStyle(letterSpacing: 0),
    bodyMedium: TextStyle(letterSpacing: 0),
  ));

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final now = DateTime.now();
    final daysOfMonth = DateUtils.getDaysInMonth(now.year, now.month);
    final DateFormat dateFormat = DateFormat('EEE');
    final ItemScrollController itemScrollController = ItemScrollController();
    final ItemPositionsListener itemPositionsListener =
        ItemPositionsListener.create();
    void scrollToToday() {
      itemScrollController.scrollTo(
        index: now.day - 1,
        duration: const Duration(seconds: 1),
        curve: Curves.bounceIn,
      );
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollToToday();
    });
    return Scaffold(
      // backgroundColor: const Color.fromRGBO(246, 249, 255, 1),
      backgroundColor: const Color.fromRGBO(246, 249, 255, 1),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(32, 16, 32, 14),
            child: SafeArea(
              bottom: false,
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeaderButton(
                        icon: Icons.calendar_month_rounded,
                      ),
                      HeaderButton(
                        icon: Icons.notifications_on_outlined,
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, Santi 👋🏽',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Let's make habits together!",
                              style: TextStyle(color: Color(0xff9B9BA1)),
                            )
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xffDDF2FC)),
                          child: const Text(
                            "😇",
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.grey.shade200),
                    child: DefaultTabController(
                      length: 2,
                      child: TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerColor: Colors.transparent,
                          indicatorPadding: const EdgeInsets.symmetric(
                              horizontal: 2, vertical: 2),
                          labelColor: Colors.blue,
                          indicator: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          tabs: [
                            const Text(
                              'Today',
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Clubs',
                                ),
                                Container(
                                  margin: const EdgeInsetsDirectional.only(
                                      start: 10),
                                  padding: const EdgeInsets.all(6),
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: const Center(
                                      child: Text(
                                    '2',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 10),
                                  )),
                                )
                              ],
                            )
                          ]),
                    ),
                  ),
                  //TODO: remove general padding, add padding to header, and here just add let vertical padding
                ],
              ),
            ),
          ),
          Container(
            height: 65,
            margin: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: ScrollablePositionedList.builder(
              itemScrollController: itemScrollController,
              itemPositionsListener: itemPositionsListener,
              scrollDirection: Axis.horizontal,
              itemCount: daysOfMonth,
              itemBuilder: (context, i) {
                final date = DateTime(now.year, now.month, i + 1);
                var isSelected = now.day == i;
                return Container(
                  width: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          color:
                              isSelected ? Colors.blue : Colors.grey.shade200)),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${i + 1}',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: isSelected ? Colors.blue : Colors.black),
                      ),
                      Text(
                        dateFormat.format(date).toUpperCase(),
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight:
                                isSelected ? FontWeight.bold : FontWeight.w200,
                            color: isSelected ? Colors.blue : Colors.black),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                Container(
                  width: screenSize.width - 64,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0, 1],
                          colors: [Color(0xff6B73FF), Color(0xff000DFF)]),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      CircularPercentIndicator(
                        radius: 20.0,
                        lineWidth: 3.0,
                        percent: 0.25,
                        center: const Text(
                          "%25",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            letterSpacing: 0,
                          ),
                        ),
                        progressColor: Colors.white,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Your daily goals almost done! 🔥',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0,
                              )),
                          SizedBox(
                            height: 2,
                          ),
                          Text('1 of 4 completed',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 12,
                                letterSpacing: 0,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Challengers'),
                        Text(
                          'view all'.toUpperCase(),
                          style: const TextStyle(),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(
                              color: const Color.fromRGBO(234, 236, 240, 1),
                              width: 2)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.access_time_filled_outlined,
                                      color: Colors.deepPurple.shade100,
                                    ),
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Best Runners! 🏃🏻‍♀️',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0),
                                      ),
                                      Text(
                                        '5 days 13 hours left',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w200,
                                            letterSpacing: 0),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.panorama_fisheye_outlined),
                                  Text('2 friends joined',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w200,
                                          letterSpacing: 0))
                                ],
                              )
                            ],
                          ),
                          const LinearProgressIndicator(
                            value: 0.25,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HeaderButton extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData icon;
  final double padding = 16;
  const HeaderButton({super.key, this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.elliptical(padding, padding)),
      onTap: onTap ?? () => print("onTap Header Button"),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(padding, padding)),
          border: Border.all(
              color: const Color.fromRGBO(234, 236, 240, 1), width: 2),
        ),
        child: Icon(
          icon,
          size: 24,
        ),
      ),
    );
  }
}
