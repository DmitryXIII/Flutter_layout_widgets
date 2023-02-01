import 'package:flutter/material.dart';

/// [Container] представляет такой виджет, который также может содержать только
/// один вложенный элемент, но при этом предоставляет дополнительные возможности
/// по настройке фона, позиционирования и размера вложенных виджетов.
/// По сути, [Container] объединяет возможности других виджетов - [Padding], [Align], [ConstrainedBox].
///
/// Некоторые параметры конструктора [Container]:
/// key: ключ элемента
/// alignment: настройки выравнивания вложенного элемента в виде объекта [AlignmentGeometry], аналогично настройке выравнивания в виджете [Align]
/// padding: настройки отступа вложенного элемента от границ контейнера, аналогично настройке отступов в виджете [Padding]
/// color: цвет контейнера
/// constraints: ограничения длины и ширины в виде объекта [BoxConstraints], применяемые к вложенному виджету. Аналогично установке размеров в [ConstrainedBox]
/// margin: устанавливает отступы текущего виджета Container от границ внешнего контейнера, аналогично настройке параметра padding
/// width: ширина контейнера
/// heigt: высота контейнера

getContainer() => Container(
    color: Colors.lightBlue,
    alignment: Alignment.center,
    child:
        const Text('I\'m widget Container', textDirection: TextDirection.ltr));

/// Применение отступов как для [margin], так и для [padding]:
/// В данном случае в качестве значения для margin установлен с верху отступ в 30 единиц.
/// То есть виджет Container будет располагаться на 30 единиц ниже верхней границы экрана.
/// Поэтому в верху экрана смартфона мы увидим черную полоску, которая не заполнена виджетом Container.

getContainerWithMargin() => Container(
    color: Colors.lightBlue,
    alignment: Alignment.topLeft,
    padding: const EdgeInsets.all(40),
    margin: const EdgeInsets.only(top: 30),
    child:
        const Text('I\'m widget Container', textDirection: TextDirection.ltr));
