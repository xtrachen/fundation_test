import 'package:flutter/material.dart';

class BuyPage extends StatefulWidget {
  const BuyPage({super.key});

  @override
  State<BuyPage> createState() => _BuyPageState();
}

class _BuyPageState extends State<BuyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('hshshs')),
        body: Container(
          color: const Color.fromRGBO(220, 220, 220, 1),
          child: Column(children: [
            const SizedBox(height: 10),
            _topView(),
            _gridView(),
            _listView()
          ]),
        ));
  }

  Widget _topView() {
    return const SizedBox(
        width: double.infinity,
        height: 55,
        child: Stack(children: [
          Positioned(
              top: 10,
              left: 20,
              height: 20,
              right: 20,
              child: Text(
                'asdfasdfad',
                style: TextStyle(
                    fontSize: 14, color: Color.fromRGBO(50, 50, 50, 1)),
              )),
          Positioned(
              top: 35,
              left: 20,
              height: 20,
              right: 20,
              child: Text("fasdfasdfasd"))
        ]));
  }

  Widget _gridView() {
    return SizedBox(
      width: double.infinity,
      height: 330,
      child: GridView.count(
          childAspectRatio: 1.75,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          crossAxisCount: 2,
          scrollDirection: Axis.vertical,
          children: _gridList()),
    );
  }

  List<Widget> _gridList() {
    List<Widget> result = [];
    for (int i = 0; i < 6; i++) {
      result.add(InkWell(
          onTap: () {
            print(i);
          },
          child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: const Color.fromRGBO(144, 144, 144, 1),
                  ),
                  color: const Color.fromRGBO(200, 200, 200, 1)),
              child: const Stack(
                children: [
                  Positioned(
                      top: 10,
                      left: 10,
                      right: 20,
                      height: 22,
                      child: Text(
                        "sdfasddsf",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      )),
                  Positioned(
                      top: 32,
                      left: 20,
                      right: 20,
                      height: 16,
                      child: Text('sdfsdfasdfasdfas',
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.center)),
                  Positioned(
                      top: 55,
                      left: 10,
                      right: 10,
                      height: 28,
                      child: Text(
                        'sfsdfasdfadsf',
                        style: TextStyle(fontSize: 22),
                        textAlign: TextAlign.center,
                      ))
                ],
              ))));
    }
    return result;
  }

  Widget _listView() {
    return SizedBox(
        width: double.infinity,
        height: 190,
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (contex, index) {
              return Container(
                  width: double.infinity,
                  height: 90,
                  child: Padding(
                      padding: const EdgeInsets.only(
                          top: 0, left: 20, right: 20, bottom: 10),
                      child: Container(
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromRGBO(51, 51, 51, 1)),
                          width: double.infinity,
                          height: double.infinity,
                          child: const Stack(
                            children: [
                              Positioned(
                                top: 10,left: 10,right: 10,height: 32,
                                  child: Text(
                                'dsfsdfasdfasdf',
                                style: TextStyle(
                                    fontSize: 28,
                                    color:
                                         Color.fromRGBO(235, 190, 194, 1),
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              )),
                              Positioned(top:46,left: 10,right: 10,height: 20,child: Text('sfasdfads     dfsdfsfds    fdsfsdfsfs',textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: Color.fromRGBO(235, 190, 194, 1)),))
                            ],
                          ))));
            }));
  }
}
