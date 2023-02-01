import 'package:flutter/material.dart';
import 'package:layout_widgets/align/align.dart';
import 'package:layout_widgets/align/align_fractional_offset.dart';
import 'package:layout_widgets/center/center.dart';
import 'package:layout_widgets/constrained_box/constrained_box.dart';
import 'package:layout_widgets/padding/padding.dart';

import 'container/container.dart';

class LayoutWidgetsProvider {
  static Widget align = getAlign();
  static Widget alignFractionalOffset = getAlignFractionalOffset();
  static Widget center = getCenter();
  static Widget padding = getPadding();
  static Widget constrainedBox = getConstrainedBox();
  static Widget constrainedBoxWithLargeText = getConstrainedBoxWithLargeText();
  static Widget container = getContainer();
  static Widget containerWithMargin = getContainerWithMargin();
}
