import 'package:flutter/widgets.dart';

enum PokeType {
  allType(
    bgColor: Color(0xFF333333),
    color:  Color(0xFF333333),
    label: 'All',
    ),
  normal(
    bgColor: Color(0xFFF1F2F3),
    color:  Color(0xFF919AA2),
    label: 'Normal',
    ),
  fire(
    bgColor: Color(0xFFFCF3EB),
    color:  Color(0xFFFF9D55),
    label: 'Fire',
    ),
  water(
    bgColor: Color(0xFFEBF1F8),
    color:  Color(0xFF5090D6),
    label: 'Water',
    ),
  electric(
    bgColor: Color(0xFFFBF8E9), 
    color:  Color(0xFFF4D23C),
    label: 'Electric',
    ),
  grass(
    bgColor: Color(0xFFEDF6EC), 
    color:  Color(0xFF63BC5A),
    label: 'Grass',
    ),
  ice(
    bgColor: Color(0xFF73CEC0), 
    color:  Color(0xFF73CEC0),
    label: 'Ice',
    ),
  fighting(
    bgColor: Color(0xFFF8E9EE), 
    color:  Color(0xFFCE416B),
    label: 'Fighting',
    ),
  poison(
    bgColor: Color(0xFFF5EDF8), 
    color:  Color(0xFFB567CE),
    label: 'Poison',
    ),
  ground(
    bgColor: Color(0xFFD97845), 
    color:  Color(0xFFF9EFEA),
    label: 'Ground',
    ),
  flying(
    bgColor: Color(0xFFF1F4FA), 
    color:  Color(0xFF89AAE3),
    label: 'Flying',
    ),
  psychic(
    bgColor: Color(0xFFFA7179), 
    color:  Color(0xFFFCEEEF),
    label: 'Psychic',
    ),
  bug(
    bgColor: Color(0xFFF1F6E8), 
    color:  Color(0xFF91C12F),
    label: 'Bug',
    ),
  rock(
    bgColor: Color(0xFFF7F5F1), 
    color:  Color(0xFFC5B78C),
    label: 'Rock',
    ),
  ghost(
    bgColor: Color(0xFFEBEDF4), 
    color:  Color(0xFF5269AD),
    label: 'Ghost',
    ),
  dragon(
    bgColor: Color(0xFFE4EEF6), 
    color:  Color(0xFF0B6DC3),
    label: 'Dragon',
    ),
  dark(
    bgColor: Color(0xFFECEBED), 
    color:  Color(0xFF5A5465),
    label: 'Dark',
    ),
  steel(
    bgColor: Color(0xFFECF1F3), 
    color:  Color(0xFF5A8EA2),
    label: 'Steel',
    ),
  fairy(
    bgColor: Color(0xFFFBF1FA), 
    color:  Color(0xFFEC8FE6),
    label: 'Fairy',
    );

  final Color bgColor;
  final Color color;
  final String label;

  const PokeType({
    required this.bgColor,
    required this.color,
    required this.label,
  });
}
