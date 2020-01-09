import 'package:mobx/mobx.dart';
part 'tasbih.g.dart';

class Tasbih = _Tasbih with _$Tasbih;

abstract class _Tasbih with Store {
  @observable
  int value = 0;

  @action
  void increment() => value++;

  @action
  void reset() => value = 0;
}
