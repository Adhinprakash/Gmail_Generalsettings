import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class SettingsProvider extends ChangeNotifier{



 List<String> countryNames = [];
  String selectedCountry = 'India'; // Default value

  Future<void> fetchCountryNames() async {
    final response =
        await http.get(Uri.parse('https://restcountries.com/v3.1/all'));
    if (response.statusCode == 200) {
      List<dynamic> countriesData = jsonDecode(response.body);
      countryNames = countriesData
          .map((country) => country['name']['common'])
          .toList()
          .cast<String>();
      notifyListeners();
    } else {
      throw Exception('Failed to load country names');
    }
  }

  void updateSelectedCountry(String newValue) {
    selectedCountry = newValue;
    notifyListeners();
  }




String _selectedFontStyle = 'Sans Serif';
  List<String> _fontStyleOptions = [
    'Sans Serif',
    'Arial',
    'Times New Roman',
    'Helvetica',
    'Courier New',
    // Add more font styles here
  ];

  String get selectedFontStyle => _selectedFontStyle;

  List<String> get fontStyleOptions => _fontStyleOptions;

  void updateFontStyle(String newValue) {
    _selectedFontStyle = newValue;
    notifyListeners();
  }






List<Color> _acceptedStarColors = [];

  List<Color> get acceptedStarColors => _acceptedStarColors;

  void updateStar(Color starColor) {
    _acceptedStarColors.add(starColor);
    notifyListeners();
  }
}