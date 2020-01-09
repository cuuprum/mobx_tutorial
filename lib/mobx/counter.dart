import 'package:mobx/mobx.dart';
part 'counter.g.dart';

class CounterMobx = _CounterMobx with _$CounterMobx; // CounterMobx adalah yang akan kita panggil di main.dart, kelas ini turunan dr abstrak class _counterMobx, lalu implement si hasil build an si build runner _$CounterMobx

abstract class _CounterMobx with Store { // _CounterMobx itu abstrak class, blue print nya.
  @observable
  int value = 0; // nilai yang nanti di ganti2, dan akan di notif ke home untuk ganti tulisannya

  // action krn ini aksi yang dilakukan untuk ubah si observable nya
  @action
  void increment(){
    value++;
  }

  @action
  void decrement(){
    value--;
  }

}