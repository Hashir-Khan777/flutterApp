import 'package:flutter/material.dart';
import 'package:flutterapp/widgets/circleAvatar_widget.dart';
import 'package:flutterapp/widgets/listtile_widget.dart';
import 'package:flutterapp/widgets/text_widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Expanded(
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       Container(
            //         margin: const EdgeInsets.only(right: 2),
            //         color: Colors.yellow,
            //         width: 200,
            //         height: 50,
            //       ),
            //       Container(
            //         margin: const EdgeInsets.only(right: 2),
            //         color: Colors.yellow,
            //         width: 200,
            //         height: 50,
            //       ),
            //       Container(
            //         margin: const EdgeInsets.only(right: 2),
            //         color: Colors.yellow,
            //         width: 200,
            //         height: 50,
            //       ),
            //       Container(
            //         margin: const EdgeInsets.only(right: 2),
            //         color: Colors.yellow,
            //         width: 200,
            //         height: 50,
            //       ),
            //       Container(
            //         margin: const EdgeInsets.only(right: 2),
            //         color: Colors.yellow,
            //         width: 200,
            //         height: 50,
            //       ),
            //       Container(
            //         margin: const EdgeInsets.only(right: 2),
            //         color: Colors.yellow,
            //         width: 200,
            //         height: 50,
            //       ),
            //       Container(
            //         margin: const EdgeInsets.only(right: 2),
            //         color: Colors.yellow,
            //         width: 200,
            //         height: 50,
            //       ),
            //       Container(
            //         margin: const EdgeInsets.only(right: 2),
            //         color: Colors.yellow,
            //         width: 200,
            //         height: 50,
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   margin: const EdgeInsets.only(top: 2),
            //   color: Colors.red,
            //   width: MediaQuery.of(context).size.width * .95,
            //   height: MediaQuery.of(context).size.height * .5,
            // ),
            // Expanded(
            //   child: ListView(
            //     children: [
            //       listTileWidget(
            //         leading: circleAvatarWidget(
            //           image: const AssetImage('assets/avatar.png'),
            //         ),
            //         title: textWidget('Hashir'),
            //         subtitle: textWidget(
            //           'Flutter Developer',
            //           color: Colors.black54,
            //         ),
            //         trailing: textWidget('12:34 AM'),
            //       ),
            //       // listTileWidget(
            //       //   leading: circleAvatarWidget(
            //       //     image: const AssetImage('assets/avatar.png'),
            //       //   ),
            //       //   title: textWidget('Hashir'),
            //       //   subtitle: textWidget(
            //       //     'Flutter Developer',
            //       //     color: Colors.black54,
            //       //   ),
            //       //   trailing: textWidget('12:34 AM'),
            //       // ),
            //       // listTileWidget(
            //       //   leading: circleAvatarWidget(
            //       //     image: const AssetImage('assets/avatar.png'),
            //       //   ),
            //       //   title: textWidget('Hashir'),
            //       //   subtitle: textWidget(
            //       //     'Flutter Developer',
            //       //     color: Colors.black54,
            //       //   ),
            //       //   trailing: textWidget('12:34 AM'),
            //       // ),
            //       // listTileWidget(
            //       //   leading: circleAvatarWidget(
            //       //     image: const AssetImage('assets/avatar.png'),
            //       //   ),
            //       //   title: textWidget('Hashir'),
            //       //   subtitle: textWidget(
            //       //     'Flutter Developer',
            //       //     color: Colors.black54,
            //       //   ),
            //       //   trailing: textWidget('12:34 AM'),
            //       // ),
            //       // listTileWidget(
            //       //   leading: circleAvatarWidget(
            //       //     image: const AssetImage('assets/avatar.png'),
            //       //   ),
            //       //   title: textWidget('Hashir'),
            //       //   subtitle: textWidget(
            //       //     'Flutter Developer',
            //       //     color: Colors.black54,
            //       //   ),
            //       //   trailing: textWidget('12:34 AM'),
            //       // ),
            //       // listTileWidget(
            //       //   leading: circleAvatarWidget(
            //       //     image: const AssetImage('assets/avatar.png'),
            //       //   ),
            //       //   title: textWidget('Hashir'),
            //       //   subtitle: textWidget(
            //       //     'Flutter Developer',
            //       //     color: Colors.black54,
            //       //   ),
            //       //   trailing: textWidget('12:34 AM'),
            //       // ),
            //       // listTileWidget(
            //       //   leading: circleAvatarWidget(
            //       //     image: const AssetImage('assets/avatar.png'),
            //       //   ),
            //       //   title: textWidget('Hashir'),
            //       //   subtitle: textWidget(
            //       //     'Flutter Developer',
            //       //     color: Colors.black54,
            //       //   ),
            //       //   trailing: textWidget('12:34 AM'),
            //       // ),
            //       // listTileWidget(
            //       //   leading: circleAvatarWidget(
            //       //     image: const AssetImage('assets/avatar.png'),
            //       //   ),
            //       //   title: textWidget('Hashir'),
            //       //   subtitle: textWidget(
            //       //     'Flutter Developer',
            //       //     color: Colors.black54,
            //       //   ),
            //       //   trailing: textWidget('12:34 AM'),
            //       // ),
            //       // listTileWidget(
            //       //   leading: circleAvatarWidget(
            //       //     image: const AssetImage('assets/avatar.png'),
            //       //   ),
            //       //   title: textWidget('Hashir'),
            //       //   subtitle: textWidget(
            //       //     'Flutter Developer',
            //       //     color: Colors.black54,
            //       //   ),
            //       //   trailing: textWidget('12:34 AM'),
            //       // ),
            //       // listTileWidget(
            //       //   leading: circleAvatarWidget(
            //       //     image: const AssetImage('assets/avatar.png'),
            //       //   ),
            //       //   title: textWidget('Hashir'),
            //       //   subtitle: textWidget(
            //       //     'Flutter Developer',
            //       //     color: Colors.black54,
            //       //   ),
            //       //   trailing: textWidget('12:34 AM'),
            //       // ),
            //       // listTileWidget(
            //       //   leading: circleAvatarWidget(
            //       //     image: const AssetImage('assets/avatar.png'),
            //       //   ),
            //       //   title: textWidget('Hashir'),
            //       //   subtitle: textWidget(
            //       //     'Flutter Developer',
            //       //     color: Colors.black54,
            //       //   ),
            //       //   trailing: textWidget('12:34 AM'),
            //       // ),
            //       // listTileWidget(
            //       //   leading: circleAvatarWidget(
            //       //     image: const AssetImage('assets/avatar.png'),
            //       //   ),
            //       //   title: textWidget('Hashir'),
            //       //   subtitle: textWidget(
            //       //     'Flutter Developer',
            //       //     color: Colors.black54,
            //       //   ),
            //       //   trailing: textWidget('12:34 AM'),
            //       // ),
            //       // listTileWidget(
            //       //   leading: circleAvatarWidget(
            //       //     image: const AssetImage('assets/avatar.png'),
            //       //   ),
            //       //   title: textWidget('Hashir'),
            //       //   subtitle: textWidget(
            //       //     'Flutter Developer',
            //       //     color: Colors.black54,
            //       //   ),
            //       //   trailing: textWidget('12:34 AM'),
            //       // ),
            //       // listTileWidget(
            //       //   leading: circleAvatarWidget(
            //       //     image: const AssetImage('assets/avatar.png'),
            //       //   ),
            //       //   title: textWidget('Hashir'),
            //       //   subtitle: textWidget(
            //       //     'Flutter Developer',
            //       //     color: Colors.black54,
            //       //   ),
            //       //   trailing: textWidget('12:34 AM'),
            //       // ),
            //     ],
            //   ),
            // ),
            // listTileWidget(
            //   leading: circleAvatarWidget(),
            //   title: textWidget('Hashir'),
            //   subtitle: textWidget(
            //     'Flutter Developer',
            //     color: Colors.black54,
            //   ),
            //   trailing: textWidget('12:34 AM'),
            // ),
            // listTileWidget(
            //   leading: circleAvatarWidget(),
            //   title: textWidget('Hashir'),
            //   subtitle: textWidget(
            //     'Flutter Developer',
            //     color: Colors.black54,
            //   ),
            //   trailing: textWidget('12:34 AM'),
            // ),
            // listTileWidget(
            //   leading: circleAvatarWidget(),
            //   title: textWidget('Hashir'),
            //   subtitle: textWidget(
            //     'Flutter Developer',
            //     color: Colors.black54,
            //   ),
            //   trailing: textWidget('12:34 AM'),
            // ),
            // containerWidget(textWidget('data 1'),
            //     color: Colors.red, width: 150.0, height: 150.0),
            // containerWidget(
            //     textWidget('data 2', fontSize: 35.0, color: Colors.redAccent),
            //     color: Colors.green),
            // const PopularProducts()
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   child: const Text('go back'),
            // )
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
                Positioned(
                  child: Container(
                    width: 130,
                    height: 130,
                    color: const Color(0xf0ff7722),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
