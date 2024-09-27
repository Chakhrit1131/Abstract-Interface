import 'dart:math';

abstract class Game{
  int? level;

  void start();
  void pause();
  void toContinue();
  void stop();
  void play();

}
abstract class Player {
  String? name;
  int selectGame();
  bool isPlayer();
}

abstract class TictacToAbst implements Game,Player{
  start()=> print('TuctactoAbst: start()');
  pause()=>print('TuctactoAbst: pause()');
  play()=>print('TuctactoAbst: play()'); 
}
class Tictacto extends TictacToAbst{
  int? level;
  String? name;
  Tictacto(this.level,this.name);
  stop()=> print('TuctactoAbst: stop()');
  toContinue()=>print('TuctactoAbst: toContinue()');
  int selectGame()=> 2;
  bool isPlayer()=> true;

}
void main(List<String> args) {
  var tactoe =Tictacto(5,'tiktok');
  tactoe.start();
  tactoe.play();
  print('Tactoe = ${tactoe.level}');
  print('Select game is ${tactoe.selectGame()}');
}