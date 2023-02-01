import 'package:flutter/material.dart';

/// Виджет [ConstrainedBox] задает параметры прямоугольной области
/// (ширину и высоту), в которой размещается вложенный виджет.
/// Обязательный параметр [constraints] представляет класс [BoxConstraints],
/// который имеет следующие конструкторы:
/// BoxConstraints({double minWidth: 0.0, double maxWidth: double.infinity, double minHeight: 0.0, double maxHeight: double.infinity}): получает минимальную ширину ([minWidth]), максимальную ширину ([maxWidth]), минимальную ([minHeight]) и максимальную ([maxHeight]) длину
/// BoxConstraints.expand({double width, double height}): принимает ширину и длину, до которых может растягиваться контейнер
/// BoxConstraints.loose(Size size): создает контейнер, который должен иметь размер не больше, чем параметр [size]
/// BoxConstraints.tight(Size size): создает контейнер, который должен иметь в точности тот же размер, что и параметр [size]
/// BoxConstraints.tightFor({double width, double height}): принимает точные значения ширины и длины, которые должен иметь контейнер
/// BoxConstraints.tightForFinite({double width: double.infinity, double height: double.infinity}): принимает точные значения ширины и длины, если они не равны [double.infinity]
/// Данный тип контейнеров применяется, когда нам надо ограничить виджет определенной областью.

getConstrainedBox() => Center(
    child: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 300, height: 100),
        child: const Text('I\'m widget ConstrainedBox',
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26) // высота шрифта 26
            )));

/// Если содержимое виджета занимает больше места, то оно усекается до видимой области.

getConstrainedBoxWithLargeText() => Center(
    child: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 320, height: 80),
        child: const Text('Мы все учились понемногу\nЧему-нибудь и как-нибудь,\nТак воспитаньем, слава богу,\nУ нас немудрено блеснуть.',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 22) // высота шрифта 22
        )));