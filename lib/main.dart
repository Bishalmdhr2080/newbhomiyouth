import 'package:flutter/material.dart';

import 'memberCard.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  // List<MemberLIst> memberLIst = [
  //   MemberLIst(
  //       name: "Bishal Manandhar",
  //       phoneNo: 9841540732,
  //       imageUrl: "assets/image/bishal.jpg"),
  //   MemberLIst(
  //       name: "Bishwo Manandhar",
  //       phoneNo: 9851004304,
  //       imageUrl: "assets/image/bishwo.jpg"),
  //   MemberLIst(
  //       name: "Dharma Manandhar",
  //       phoneNo: 9851275458,
  //       imageUrl: "assets/image/dharma.jpg"),
  //   MemberLIst(
  //       name: "Sunil Mannadhar",
  //       phoneNo: 9849269023,
  //       imageUrl: "assets/image/sunil.jpg"),
  //   MemberLIst(
  //       name: "Nirmal Panadey",
  //       phoneNo: 9841000054,
  //       imageUrl: "assets/image/pandey.jpg"),
  //   MemberLIst(
  //       name: "Gautam Manadhar",
  //       phoneNo: 9841654128,
  //       imageUrl: "assets/image/gautam.jpg"),
  //   MemberLIst(
  //       name: "Marbin Manandhar",
  //       phoneNo: 9808009509,
  //       imageUrl: "assets/image/marbin.jpg"),
  //   MemberLIst(
  //       name: "Sujin Manandhar(k)",
  //       phoneNo: 9849684339,
  //       imageUrl: "assets/image/sujink.jpg"),
  //   MemberLIst(
  //       name: "Shyam Manandhar",
  //       phoneNo: 9841964761,
  //       imageUrl: "assets/image/shyam.jpg"),
  //   MemberLIst(
  //       name: "Shrawan ranjit",
  //       phoneNo: 9808898844,
  //       imageUrl: "assets/image/shrawan.jpg"),
  //   MemberLIst(
  //       name: "Roshan Manandhar",
  //       phoneNo: 9841004142,
  //       imageUrl: "assets/image/roshan.jpg"),
  //   MemberLIst(
  //       name: "Sujin Manandhar B",
  //       phoneNo: 9843939939,
  //       imageUrl: "assets/image/sujin.jpg"),
  //   MemberLIst(
  //       name: "Shyam Planachowoke",
  //       phoneNo: 9843374707,
  //       imageUrl: "assets/image/shyamkale.jpg"),
  //   MemberLIst(
  //       name: "Jaganath Manandhar",
  //       phoneNo: 9849667993,
  //       imageUrl: "assets/image/jagnath.jpg"),
  //   MemberLIst(
  //       name: "Shiva Manandhar",
  //       phoneNo: 9841913233,
  //       imageUrl: "assets/image/shiva.jpg"),
  //   MemberLIst(
  //       name: "Sajan Manandhar",
  //       phoneNo: 9860656027,
  //       imageUrl: "assets/image/sajan.jpg"),
  //   MemberLIst(
  //       name: "Prabin Manandhar",
  //       phoneNo: 9851070712,
  //       imageUrl: "assets/image/prabin.jpg"),
  //   MemberLIst(
  //       name: "Roshan Shrestha",
  //       phoneNo: 9860180911,
  //       imageUrl: "assets/image/roshandhau.jpg"),
  //   MemberLIst(
  //       name: "Rajkumar Manandhar",
  //       phoneNo: 9841947242,
  //       imageUrl: "assets/image/raj.jpg"),
  //   MemberLIst(
  //       name: "Krishna Kumar Manandhar",
  //       phoneNo: 9840178018,
  //       imageUrl: "assets/image/kumar.jpg"),
  //   MemberLIst(
  //       name: "Sagar Manandhar",
  //       phoneNo: 9849013175,
  //       imageUrl: "assets/image/sagar.jpg"),
  //   MemberLIst(
  //       name: "Sanjaya Manandhar",
  //       phoneNo: 9849013765,
  //       imageUrl: "assets/image/sanjay.jpg"),
  //   MemberLIst(
  //       name: "Laxman Timalsina",
  //       phoneNo: 9851203268,
  //       imageUrl: "assets/image/laxman.jpg"),
  //   MemberLIst(
  //       name: "Anup Rana",
  //       phoneNo: 9818115177,
  //       imageUrl: "assets/image/anup.jpg"),
  //   MemberLIst(
  //       name: "Rijan Khadka",
  //       phoneNo: 9851077829,
  //       imageUrl: "assets/image/chya.jpg"),
  //   MemberLIst(
  //       name: "Sumit Manandhar",
  //       phoneNo: 9801170480,
  //       imageUrl: "assets/image/sumit.jpg"),
  //   MemberLIst(
  //       name: "Ishan Manandhar",
  //       phoneNo: 9801177513,
  //       imageUrl: "assets/image/ishan.jpg"),
  //   MemberLIst(
  //       name: "Progress Manandhar",
  //       phoneNo: 9851162556,
  //       imageUrl: "assets/image/progress.jpg"),
  // ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: SizedBox(
              height: 70,
              width: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.asset("assets/image/bhomilogo.png"),
              )),
          title: Text("BHOMI YOUTH CLUB"),
          centerTitle: true,
          actions: [
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: MemberCard(),

        // Container(
        //   color: Color.fromARGB(255, 201, 185, 238),
        //   child: Column(
        //     children: [
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Padding(
        //             padding: const EdgeInsets.all(10),
        //             child: Text(
        //               "Contact Detail's of Members",
        //               style: TextStyle(
        //                 fontWeight: FontWeight.w500,
        //                 fontSize: 18,
        //                 color: Colors.blueAccent,
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //       Expanded(
        //         child: ListView.separated(
        //           itemCount: memberLIst.length,
        //           separatorBuilder: (context, index) {
        //             return Divider(
        //               color: Colors.black,
        //             );
        //           },
        //           itemBuilder: (context, index) {
        //             return Column(
        //               children: [
        //                 GestureDetector(
        //                   onTap: () async {
        //                     print("test");
        //                     var url = "tel://${memberLIst[index].phoneNo}";
        //                     try {
        //                       await launch(url);
        //                     } catch (e) {}
        //                   },
        //                   child: Card(
        //                     color: Color.fromARGB(255, 184, 180, 240),
        //                     child: Row(
        //                       children: [
        //                         SizedBox(
        //                           width: 5,
        //                         ),
        //                         Text("${index + 1}"),
        //                         Spacer(),
        //                         SizedBox(
        //                             height: 75,
        //                             width: 75,
        //                             child: Padding(
        //                               padding: const EdgeInsets.all(8.0),
        //                               child: Image.asset(
        //                                 memberLIst[index].imageUrl!,
        //                                 fit: BoxFit.cover,
        //                               ),
        //                             )),
        //                         Spacer(),
        //                         SizedBox(
        //                             width: 120,
        //                             child: Text(
        //                               memberLIst[index].name!,
        //                               overflow: TextOverflow.clip,
        //                             )),
        //                         Spacer(),
        //                         Text("${memberLIst[index].phoneNo!}"),
        //                         Spacer(),
        //                         Icon(Icons.call),
        //                         SizedBox(
        //                           width: 5,
        //                         ),
        //                       ],
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             );
        //           },
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // bottomNavigationBar: BottomNavigationBar(items: [
        //   BottomNavigationBarItem(
        //     label: "Home",
        //     icon: Icon(Icons.home)),
        //   BottomNavigationBarItem(
        //     label: "Sendmessage",
        //     icon: Icon(Icons.message))])
      ),
    );
  }
}

// class MemberLIst {
//   String? name, imageUrl;
//   int? phoneNo;
//   int? Sn;
//   MemberLIst({this.name, this.imageUrl, this.phoneNo, this.Sn});
// }