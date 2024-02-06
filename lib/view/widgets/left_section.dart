import 'package:flutter/material.dart';
import 'package:gmail/view/componets/const.dart';
import 'package:gmail/view/widgets/mail_items.dart';
class LeftSection extends StatelessWidget {
  const LeftSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 55, bottom: 10,left: 10),
                        child: Container(
                          height: 55,
                          width: 149,
                          decoration: BoxDecoration(
                            color: const Color(0xffC2E7FF),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.edit_outlined),
                              Text(
                                'Compose',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Mailitems(
                        fontWeight: FontWeight.bold,
                        icon: Icons.inbox,
                        mailtype: "inbox",
                        mailcount: "8696",
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Mailitems(
                        fontWeight: FontWeight.normal,
                        icon: Icons.star_border,
                        mailtype: "Starred",
                        mailcount: "",
                      ),
                      kheight15,
                      Mailitems(
                        fontWeight: FontWeight.normal,
                        icon: Icons.inbox,
                        mailtype: "inbox",
                        mailcount: "",
                      ),
                      kheight15,
                      Mailitems(
                        fontWeight: FontWeight.normal,
                        icon: Icons.snooze_rounded,
                        mailtype: "Snoozed",
                        mailcount: "",
                      ),
                      kheight15,
                      Mailitems(
                        fontWeight: FontWeight.normal,
                        icon: Icons.send,
                        mailtype: "send",
                        mailcount: "",
                      ),
                      kheight15,
                      Mailitems(
                        fontWeight: FontWeight.bold,
                        icon: Icons.drafts,
                        mailtype: "drafts",
                        mailcount: "98",
                      ),
                      kheight15,
                      Mailitems(
                        fontWeight: FontWeight.normal,
                        icon: Icons.expand_more,
                        mailtype: "more",
                        mailcount: "",
                      ),
                      kheight15,
                      const ListTile(
                        leading: Text(
                          'Labels',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        trailing: Padding(
                          padding: EdgeInsets.only(left: 26),
                          child: Icon(Icons.add, color: Colors.black),
                        ),
                      )
                    ],
                  )  ;
  }
}