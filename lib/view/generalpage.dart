
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gmail/controller/settings_controller.dart';
import 'package:gmail/view/componets/colors.dart';
import 'package:gmail/view/componets/const.dart';
import 'package:gmail/view/widgets/language_dropdown.dart';
import 'package:gmail/view/widgets/left_section.dart';
import 'package:gmail/view/widgets/custumappbar.dart';
import 'package:provider/provider.dart';

class GeneralSettings extends StatefulWidget {
  const GeneralSettings({Key? key}) : super(key: key);

  @override
  State<GeneralSettings> createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<SettingsProvider>(context, listen: false).fetchCountryNames();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Column(
        children: [
          CustumAppbar(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: Container(
                    width: 200,
                    height: 500,
                    color: backgroundcolor,
                    child: const LeftSection()),
              ),
              const SizedBox(
                width: 45,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: DefaultTabController(
                    length: 10,
                    child: Container(
                      height: 600,
                      width: 1200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 5, left: 10),
                            child: Text(
                              "Settings",
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                            ),
                          ),
                          Divider(),
                          const TabBar(
                            tabs: [
                              Tab(text: "General"),
                              Tab(text: "Labels"),
                              Tab(text: "Inbox"),
                              Tab(text: "Accounts and import"),
                              Tab(text: "Filters and Blocked Addresses"),
                              Tab(text: "Forwarding and POP/IMAP"),
                              Tab(text: "Add-ons"),
                              Tab(text: "Chat and Meet"),
                              Tab(text: "Advanced"),
                              Tab(text: "Office"),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              children: [
                                Container(
                                    child: Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Language:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          Padding(
                                            padding: EdgeInsets.only(left: 190),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 20,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                          "Gmail display language:"),
                                                      Text(
                                                        "Show all languages",
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    32,
                                                                    104,
                                                                    228)),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 10, right: 10),
                                                  child: LanguageDropdown(),
                                                ),
                                                Text(
                                                    "Change language settings for other Google products",
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 32, 104, 228)))
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const Divider(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Phone numbers",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 160),
                                            child: Row(
                                              children: [
                                                const Text(
                                                  "Default country code:",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10, right: 10),
                                                  child: Consumer<
                                                          SettingsProvider>(
                                                      builder: (context,
                                                          provider, _) {
                                                    return Container(
                                                        height: 20,
                                                        width: 286,
                                                        decoration:
                                                            BoxDecoration(
                                                                border: Border
                                                                    .all()),
                                                        child: DropdownButton<
                                                            String>(
                                                          iconSize: 10,
                                                          value: provider
                                                              .selectedCountry,
                                                          onChanged: (String?
                                                              newvalue) {
                                                            provider
                                                                .updateSelectedCountry(
                                                                    newvalue!);
                                                          },
                                                          items: provider
                                                              .countryNames
                                                              .map<
                                                                  DropdownMenuItem<
                                                                      String>>((String?
                                                                  value) {
                                                            return DropdownMenuItem<
                                                                String>(
                                                              value: value,
                                                              child: Text(
                                                                value!,
                                                                style: const TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400),
                                                              ),
                                                            );
                                                          }).toList(),
                                                        ));
                                                  }),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const Divider(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Row(
                                        children: [
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Default text style:",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                              Text(
                                                  "(Use the 'Remove formatting' button on\n the toolbar to reset the default text\n style)",
                                                  style:
                                                      TextStyle(fontSize: 11))
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 60),
                                            child: SizedBox(
                                              height: 70,
                                              width: 520,
                                              child: Material(
                                                elevation: 4,
                                                color: Colors.white,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5),
                                                      child: Row(
                                                        children: [
                                                          Consumer<
                                                              SettingsProvider>(
                                                            builder: (context,
                                                                provider, _) {
                                                              return DropdownButton<
                                                                  String>(
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        13),
                                                                dropdownColor:
                                                                    Colors
                                                                        .white,
                                                                value: provider
                                                                    .selectedFontStyle,
                                                                onChanged: (String?
                                                                    newValue) {
                                                                  provider.updateFontStyle(
                                                                      newValue!);
                                                                },
                                                                items: provider
                                                                    .fontStyleOptions
                                                                    .map<
                                                                        DropdownMenuItem<
                                                                            String>>((String
                                                                        language) {
                                                                  return DropdownMenuItem<
                                                                      String>(
                                                                    value:
                                                                        language,
                                                                    child: Text(
                                                                        language),
                                                                  );
                                                                }).toList(),
                                                              );
                                                            },
                                                          ),
                                                          VerticalDivider(),
                                                          SizedBox(
                                                            height: 40,
                                                            child: SizedBox(
                                                              child: Row(
                                                                children: [
                                                                  const Icon(
                                                                    Icons
                                                                        .format_size,
                                                                    size: 19,
                                                                  ),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: const Icon(
                                                                        Icons
                                                                            .arrow_drop_down),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          const VerticalDivider(),
                                                          SizedBox(
                                                            height: 40,
                                                            child: SizedBox(
                                                              child: Row(
                                                                children: [
                                                                  const Icon(Icons
                                                                      .text_format),
                                                                  IconButton(
                                                                    onPressed:
                                                                        () {},
                                                                    icon: const Icon(
                                                                        Icons
                                                                            .arrow_drop_down),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          VerticalDivider(),
                                                          SizedBox(
                                                            height: 40,
                                                            child: SizedBox(
                                                              child: IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: const Icon(
                                                                    Icons
                                                                        .format_clear),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5),
                                                      child: Text(
                                                        'This is what your body text will look like.',
                                                        style: TextStyle(
                                                            fontSize: 13),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Divider(),
                                     Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Row(
                                        children: [
                                          const Text(
                                            "Stars:",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 220),
                                            child: Column(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Row(
                                                      children: [
                                                        Text(
                                                          "Drag the star between the lists",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        Text(
                                                            " The stars will rotate in the order shown below when you click successively. To learn the name of a star for.")
                                                      ],
                                                    ),
                                                    const Text(
                                                        "search, hover your mouse over the image."),
                                                   Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(text: 'Presets:         '),
                        TextSpan(
                          text: '1 star         ',
                          style:  const TextStyle(
                            color: Color.fromARGB(255, 32, 104, 228),
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                        TextSpan(
                          text: '4 stars         ',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 32, 104, 228),
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                        TextSpan(
                          text: 'all stars         ',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 32, 104, 228),
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),

                                                    kheight10,
                                                    //

                                                    const Row(
                                                      children: [
                                                        Text(
                                                          'Not in use:',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        SizedBox(width: 20),
                                                        Draggable<Color>(
                                                          data:
                                                              Color(0xffF7A14C),
                                                          feedback: Icon(
                                                            Icons.star,
                                                            size: 10,
                                                            color: Color(
                                                                0xffF7A14C),
                                                          ),
                                                          child: Icon(
                                                            Icons.star,
                                                            size: 14,
                                                            color: Color(
                                                                0xffF7A14C),
                                                          ),
                                                        ),
                                                        SizedBox(width: 20),
                                                      ],
                                                    ),
                                                    kheight10,
                                                    const Row(
                                                      children: [
                                                        Text(
                                                          'Not in use:',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        SizedBox(width: 20),
                                                        Draggable<Color>(
                                                          data:
                                                              Color(0xffF7A14C),
                                                          feedback: Icon(
                                                            Icons.star,
                                                            color: Color(
                                                                0xffF7A14C),
                                                          ),
                                                          child: Icon(
                                                            Icons.star,
                                                            size: 14,
                                                            color: Color(
                                                                0xffF7A14C),
                                                          ),
                                                        ),
                                                        SizedBox(width: 20),
                                                        Draggable<Color>(
                                                          data:
                                                              Color(0xffE57B72),
                                                          feedback: Icon(
                                                            Icons.star,
                                                            color: Color(
                                                                0xffE57B72),
                                                          ),
                                                          child: Icon(
                                                            size: 14,
                                                            Icons.star,
                                                            color: Color(
                                                                0xffE57B72),
                                                          ),
                                                        ),
                                                        SizedBox(width: 20),
                                                        Draggable<Color>(
                                                          data:
                                                              Color(0xffB967C7),
                                                          feedback: Icon(
                                                            Icons.star,
                                                            color: Color(
                                                                0xffB967C7),
                                                          ),
                                                          child: Icon(
                                                            size: 14,
                                                            Icons.star,
                                                            color: Color(
                                                                0xffB967C7),
                                                          ),
                                                        ),
                                                        SizedBox(width: 20),
                                                        Draggable<Color>(
                                                          data:
                                                              Color(0xff7AA9F7),
                                                          feedback: Icon(
                                                            Icons.star,
                                                            color: Color(
                                                                0xff7AA9F7),
                                                          ),
                                                          child: Icon(
                                                            size: 14,
                                                            Icons.star,
                                                            color: Color(
                                                                0xff7AA9F7),
                                                          ),
                                                        ),
                                                        SizedBox(width: 20),
                                                        Draggable<Color>(
                                                          data:
                                                              Color(0xff57BA89),
                                                          feedback: Icon(
                                                            Icons.star,
                                                            color: Color(
                                                                0xff57BA89),
                                                          ),
                                                          child: Icon(
                                                            size: 14,
                                                            Icons.star,
                                                            color: Color(
                                                                0xff57BA89),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const Divider(
                                      color: Colors.grey,
                                      thickness: 0.4,
                                    ),
                                  ],
                                )),
                                Container(child: Text("jfih")),
                                Container(child: Text('Content for Tag B')),
                                Container(child: Text('Content for Tag B')),
                                Container(child: Text('Content for Tag B')),
                                Container(child: Text('Content for Tag B')),
                                Container(child: Text('Content for Tag B')),
                                Container(child: Text('Content for Tag B')),
                                Container(child: Text('Content for Tag B')),
                                Container(child: Text('Content for Tag B')),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
