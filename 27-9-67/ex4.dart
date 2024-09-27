//interface modifier
abstract class Building {
  void draftBlueqrint() ;
  void interior();
  void construct();
}
class House implements Building{
  @override
  void construct() {
  print('House: construct ');
  }

  @override
  void draftBlueqrint() {
  print('House: draftBlueqrint ');
  }

  @override
  void interior() {
  print('House: interior ');
  }
}
void main(List<String> args) {
  var myHouse =House();
  myHouse.draftBlueqrint();
  myHouse.construct();
  myHouse.interior();
}