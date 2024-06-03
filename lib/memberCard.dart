import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'model.dart';

class MemberCard extends StatefulWidget {
  const MemberCard({super.key});

  @override
  State<MemberCard> createState() => _MemberCardState();
}

class _MemberCardState extends State<MemberCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 201, 185, 238),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
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
                return const Divider(
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
                        color: const Color.fromARGB(255, 184, 180, 240),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 5,
                            ),
                            Text("${index + 1}"),
                            const Spacer(),
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
                            const Spacer(),
                            SizedBox(
                                width: 120,
                                child: Text(
                                  memberdetail[index].name!,
                                  overflow: TextOverflow.clip,
                                )),
                            const Spacer(),
                            Text("${memberdetail[index].phoneNo!}"),
                            const Spacer(),
                            const Icon(Icons.call),
                            const SizedBox(
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
