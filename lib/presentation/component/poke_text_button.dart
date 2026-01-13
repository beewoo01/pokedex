import 'package:flutter/material.dart';
import 'package:flutter_pokedex/gen/assets.gen.dart';
import 'package:flutter_pokedex/presentation/component/width_and_height.dart';
import 'package:flutter_pokedex/presentation/theme/common_color.dart';
import 'package:flutter_pokedex/presentation/theme/custom_text_theme.dart';

class PokeTextButton extends StatefulWidget {
  final VoidCallback callback;
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final bool isEnable;
  final TextStyle? style;

  const PokeTextButton({
    super.key,
    required this.callback,
    required this.title,
    this.isEnable = true,
    this.backgroundColor = blue,
    this.textColor = Colors.white,
    this.style,
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

  void _onTapUp(bool isTab) => setState(() {
    if (widget.isEnable) {
      _pressed = false;
    }

    if (isTab) {
      widget.callback();
    }
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _onTapDown(),
      onTapUp: (_) => _onTapUp(true),
      onTapCancel: () => _onTapUp(false),
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
              style:
                  widget.style?.copyWith(color: widget.textColor) ??
                  context.headlineLarge?.copyWith(color: widget.textColor),
            ),
          ),
        ),
      ),
    );
  }
}

class DefaultArrowIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const DefaultArrowIconButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color(0xFF333333),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                style: context.labelMedium?.copyWith(color: Colors.white),
              ),
            ),
            const WGap(width: 8),
            Assets.icons.iconArrowBottom.svg(width: 10, height: 24),
          ],
        ),
      ),
    );
  }
}
