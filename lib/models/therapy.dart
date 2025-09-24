
import 'package:flutter/material.dart';

class Therapy {
  final String title;
  final String subtitle;
  final String sanskrit;
  final String description;
  final String intensity;
  final Color accentColor;
  final List<Color> gradientColors;

  Therapy({
    required this.title,
    required this.subtitle,
    required this.sanskrit,
    required this.description,
    required this.intensity,
    required this.accentColor,
    required this.gradientColors,
  });

  factory Therapy.fromJson(Map<String, dynamic> json) {
    return Therapy(
      title: json['title'],
      subtitle: json['subtitle'],
      sanskrit: json['sanskrit'],
      description: json['description'],
      intensity: json['intensity'],
      accentColor: Color(int.parse(json['accentColor'])),
      gradientColors: (json['gradientColors'] as List)
          .map((color) => Color(int.parse(color)))
          .toList(),
    );
  }
}
