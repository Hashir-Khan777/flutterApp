import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/circleAvatar_widget.dart';
import 'package:flutterapp/widgets/listtile_widget.dart';
import 'package:flutterapp/widgets/text_widget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Widget currentScreen = const Text('Screen 1');
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      // body: SizedBox(
      //   width: MediaQuery.of(context).size.width,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: const [
      //       DefaultTabController(
      //         length: 2,
      //         initialIndex: 0,
      //         child: TabBar(
      //           tabs: [
      //             Tab(
      //               child: Text(
      //                 'Todos',
      //                 style: TextStyle(color: Colors.black),
      //               ),
      //             ),
      //             Tab(
      //               child: Text(
      //                 'Stats',
      //                 style: TextStyle(color: Colors.black),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Expanded(
      //         child: DefaultTabController(
      //           length: 2,
      //           initialIndex: 0,
      //           child: TabBarView(
      //             children: [
      //               Text('tab 1'),
      //               Text('tab 2'),
      //             ],
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      body: Center(
        child: currentScreen,
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = const Text('Screen 1');
                  currentTab = 0;
                });
              },
              icon: Icon(
                Icons.home,
                color: currentTab == 0 ? Colors.white : Colors.white60,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = const Text('Screen 2');
                  currentTab = 1;
                });
              },
              icon: Icon(
                Icons.info,
                color: currentTab == 1 ? Colors.white : Colors.white60,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = const Text('Screen 3');
                  currentTab = 2;
                });
              },
              icon: Icon(
                Icons.work,
                color: currentTab == 2 ? Colors.white : Colors.white60,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentScreen = const Text('Screen 4');
                  currentTab = 3;
                });
              },
              icon: Icon(
                Icons.phone,
                color: currentTab == 3 ? Colors.white : Colors.white60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
