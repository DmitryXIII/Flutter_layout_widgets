import 'package:flutter/material.dart';

/// Виджет [Padding] позволяет задать отступы для вложенного элемента.
/// Для установки отступов в конструкторе применяется параметр [padding],
/// который является обязательным параметром. Он представляет класс [EdgeInsetsGeometry].
/// Чтобы задать отступы, мы можем использовать один из конструкторов этого класса:
/// EdgeInsets.all(double value): устанавливает одно значение double для всех четырех отступов (слева, сверху, справа и снизу)
/// EdgeInsets.fromLTRB(double left, double top, double right, double bottom): устанавливает для каждой из четырех сторон свое значение отступ
/// EdgeInsets.fromWindowPadding(WindowPadding padding, double devicePixelRatio): определяет простанство, которое соответствует параметру padding
/// EdgeInsets.only({double left: 0.0, double top: 0.0, double right: 0.0, double bottom: 0.0}): устанавливает для каждой из четырех сторон ненулевые значения отступов
/// EdgeInsets.symmetric({double vertical: 0.0, double horizontal: 0.0}): [vertical] устанавливает верхний и нижний отступ, а [horizontal] - левый и правый.

getPadding() => const Padding(
    padding: EdgeInsets.all(40),
    child: Align(
        alignment: Alignment.topCenter,
        child: Text('I\'m widget Padding', textDirection: TextDirection.ltr)));
