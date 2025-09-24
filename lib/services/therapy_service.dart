
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:myapp/models/therapy.dart';

class TherapyService {
  Future<List<Therapy>> getTherapies() async {
    final String response = await rootBundle.loadString('assets/data/therapies.json');
    final data = await json.decode(response) as List;
    return data.map((json) => Therapy.fromJson(json)).toList();
  }
}
