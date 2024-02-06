import 'package:flutter/material.dart';
import 'package:language_picker/language_picker_dropdown.dart';
import 'package:language_picker/languages.dart';

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return 
                                                 Container(
                                                  height: 19,
                                                  decoration: BoxDecoration(
                                                    border: Border.all()
                                                  ),
                                                  width: 260,
                                                   child: LanguagePickerDropdown(
                                                                 
                                                                 initialValue: Languages.english,
                                                                 itemBuilder: (Language lang) {
                                                                   return Row(
                                                                     children: [
                                                                       Text(lang.name,style: TextStyle(fontSize: 13 ,fontWeight: FontWeight.w400),),
                                                                       SizedBox(width: 5),
                                                                       Text(
                                                                         lang.isoCode,style: TextStyle(fontSize: 13 ,fontWeight: FontWeight.w400),
                                                                       ),
                                                                     ],
                                                                   );
                                                                 },
                                                                 onValuePicked: (Language language) {
                                                                   print('Selected language: ${language.name}');
                                                                 },
                                                               ),
                                                 );
  }
}