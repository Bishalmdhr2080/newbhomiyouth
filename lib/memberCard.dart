// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'model.dart';

class MemberCard extends StatefulWidget {
  @override
  State<MemberCard> createState() => _MemberCardState();
}

class _MemberCardState extends State<MemberCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 201, 185, 238),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Contact Detail's of Members",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              itemCount: memberdetail.length,
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.black,
                );
              },
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        print("test");
                        var url = "tel://${memberdetail[index].phoneNo}";
                        try {
                          await launch(url);
                        } catch (e) {}
                      },
                      child: Card(
                        color: Color.fromARGB(255, 184, 180, 240),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Text("${index + 1}"),
                            Spacer(),
                            SizedBox(
                                height: 75,
                                width: 75,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    memberdetail[index].imageUrl!,
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            Spacer(),
                            SizedBox(
                                width: 120,
                                child: Text(
                                  memberdetail[index].name!,
                                  overflow: TextOverflow.clip,
                                )),
                            Spacer(),
                            Text("${memberdetail[index].phoneNo!}"),
                            Spacer(),
                            Icon(Icons.call),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
