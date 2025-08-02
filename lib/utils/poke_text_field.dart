import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';

class PokeTextField extends StatefulWidget {
  final ValueChanged<String>? onChanged;
  final TextInputType keyboardType;
  final String hint;
  final double height;
  final bool obscureText;
  final Widget? suffixIcon;

  const PokeTextField({
    super.key,
    this.onChanged,
    this.keyboardType = TextInputType.text,
    required this.hint,
    this.height = 52,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  State<PokeTextField> createState() => _PokeTextFieldState();
}

class _PokeTextFieldState extends State<PokeTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: widget.height,
      child: TextField(
        onChanged: widget.onChanged,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          suffixIcon: widget.suffixIcon,
          hint: Text(
            widget.hint,
            style: context.bodyLarge?.copyWith(color: greys['400']),
          ),
          enabledBorder: outlinedBorder(),
          disabledBorder: outlinedBorder(),
          focusedBorder: outlinedBorder(borderColor: black),
        ),
      ),
    );
  }

  OutlineInputBorder outlinedBorder({Color? borderColor}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: borderColor ?? greys['400']!),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    );
  }
}
