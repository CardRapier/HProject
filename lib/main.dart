import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 249, 255, 1),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Column(
            children: [
              //TODO: remopve general padding, add padding to the header
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
                padding: const EdgeInsets.symmetric(vertical: 12),
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
                          horizontal: 4, vertical: 4),
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
                              margin:
                                  const EdgeInsetsDirectional.only(start: 10),
                              padding: const EdgeInsets.all(6),
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const Center(
                                  child: Text(
                                '2',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 10),
                              )),
                            )
                          ],
                        )
                      ]),
                ),
              ),
              //TODO: remove general padding, add padding to header, and here just add let vertical padding
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.blue)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 4),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '3',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'SAT',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
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
                color: const Color.fromRGBO(234, 236, 240, 1), width: 2)),
        child: Icon(
          icon,
          size: 24,
        ),
      ),
    );
  }
}
