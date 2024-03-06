import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'example.tailor.dart';

@TailorMixinComponent()
class MyButtonTheme extends ThemeExtension<MyButtonTheme> with DiagnosticableTreeMixin, _$MyButtonThemeTailorMixin {
  const MyButtonTheme({
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.color,
  });
  @override
  final EdgeInsets padding;
  @override
  final Color? color;

  @override
  MyButtonTheme merge(MyButtonTheme? other) {
    // TODO: implement merge
    return super.merge(other);
  }
}

class MyButton extends StatelessWidget {
  const MyButton({required this.child, super.key, this.onPressed, this.theme});
  final Widget child;
  final void Function()? onPressed;
  final MyButtonTheme? theme;

  @override
  Widget build(BuildContext context) {
    final theme = this.theme;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: theme?.padding,
        color: theme?.color,
        child: child,
      ),
    );
  }
}
