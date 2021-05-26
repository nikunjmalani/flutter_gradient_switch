library flutter_gradient_switch;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GradientSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color activeColor;
  const GradientSwitch({Key key, this.value, this.onChanged, this.activeColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: CupertinoSwitch(
        activeColor: activeColor,
        value: value,
        onChanged: onChanged,
      ),
      shaderCallback: (r) {
        return LinearGradient(
          colors: value ? [activeColor, activeColor] : [Colors.red, Colors.red],
        ).createShader(r);
      },
    );
  }
}
