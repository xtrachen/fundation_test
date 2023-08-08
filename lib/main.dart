import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'iconDialog.dart';
import 'pinkLinearButton.dart';

import 'package:flash/flash.dart';

import 'package:expandable_page_view/expandable_page_view.dart';

void main() {
  // runApp(const MyApp());
  runApp(const GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  late PageController pageController;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // return _buildNestedScrollView();
    return Scaffold(
        appBar: AppBar(
          title: const Text("hahahah"),
        ),
        body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Positioned(
                    top: 60,
                    left: 40,
                    right: 40,
                    height: 400,
                    child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.lime,
                        child: _pageView())),
                Positioned(
                    top: 420,
                    left: 80,
                    right: 80,
                    height: 20,
                    child: Center(child: SmoothPageIndicator(
                        controller: pageController,
                        count: 4,
                        effect: WormEffect())))
              ],
            )));
  }

  Widget _galleryView() {
    return ExpandablePageView(children: [
      SizedBox(child: Center(child: Text("dfsadfasdfasdfasdfasd"))),
      SizedBox(child: Center(child: Text("dfsadfasdfasdfasdfasd"))),
      SizedBox(child: Center(child: Text("dfsadfasdfasdfasdfasd")))
    ]);
  }

  Widget _pageView() {
    var pageView = PageView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(color: Colors.green),
        Container(color: Colors.lime),
        Container(color: Colors.purple),
        Container(color: Colors.orange),
      ],
    );

    pageController = pageView.controller;
    return pageView;
  }

  Widget _buildNestedScrollView() {
    return NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 230,
              title: const Text('导航测试'),
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                children: [
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      height: 180,
                      child: InkWell(
                          onTap: () {},
                          child: Image.network(
                              "http://img.haote.com/upload/20180918/2018091815372344164.jpg",
                              fit: BoxFit.cover)))
                ],
              )),
            )
          ];
        },
        body: MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 120,
                color: Colors.primaries[index % Colors.primaries.length],
                alignment: Alignment.center,
                child: Text(
                  '组合ListView $index',
                  style: const TextStyle(color: Colors.white, fontSize: 30),
                ),
              );
            })));
  }
}
