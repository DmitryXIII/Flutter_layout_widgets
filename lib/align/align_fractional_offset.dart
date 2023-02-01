import 'package:flutter/material.dart';

/// Класс [FractionalOffset] унаследован от класса [Alignment] и предоставляет
/// дополнительные возможности для позиционирования элемента.
/// ---------------------------------------------------------------------------
/// Он имеет следующий конструктор: FractionalOffset(double dx, double dy),
/// где [dx] - это смещение по горизонтали, а [dy] - смещение по вертикали.
/// Смещения выражаются в долях от 0.0 до 1.0, например,
/// FractionalOffset(1.0, 0.0) представляет верхний правый угол контейнера,
/// а FractionalOffset(0.0, 1.0) - нижний левый угол.
/// Соответственно FractionalOffset(0.5, 0.5) - это центр (как по горизонтали, так и по вертикали).
/// Указав нужное смещение, мы можем расположить элемент в определенной части контейнера.

getAlignFractionalOffset() => const Align(
    alignment: FractionalOffset(0.2, 0.3),
    child: Text('Hello Flutter',
        textDirection: TextDirection.ltr, // текст слева направо
        style: TextStyle(fontSize: 20) // высота шрифта 20
        ));