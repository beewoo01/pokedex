import 'package:flutter/material.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';

class PokeTextButton extends StatefulWidget {
  final VoidCallback callback;
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final bool isEnable;

  const PokeTextButton({
    super.key,
    required this.callback,
    required this.title,
    this.isEnable = true,
    this.backgroundColor = blue,
    this.textColor = Colors.white,
  });

  @override
  State<PokeTextButton> createState() => _PokeTextButtonState();
}

class _PokeTextButtonState extends State<PokeTextButton> {
  var _pressed = false;

  double get _scale => _pressed ? 0.95 : 1.0;

  void _onTapDown() => setState(() {
    if (widget.isEnable) {
      _pressed = true;
    }
  });

  void _onTapUp() => setState(() {
    if (widget.isEnable) {
      _pressed = false;
    }
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _onTapDown(),
      onTapUp: (_) => _onTapUp(),
      onTapCancel: () => _onTapUp(),
      onTap: () => widget.isEnable ? widget.callback() : null,
      child: AnimatedScale(
        scale: _scale,
        duration: Duration(milliseconds: 100),
        child: SizedBox(
          width: double.infinity,
          height: 58,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: widget.backgroundColor,
            ),
            child: Text(
              widget.title,
              style: context.headlineLarge?.copyWith(color: widget.textColor),
            ),
          ),
        ),
      ),
    );
  }
}
