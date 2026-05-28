void main(){

  final Hero spiderman = Hero(name: 'Spiderman');
  print(spiderman);
  print(spiderman.name);
  print(spiderman.power);
}

class Hero {
  String name;
  String powwer;

  Hero({
    required name,
    this.power = 'Sin Poder'
  });

  /* Hero ( String pName, String pPower)
  : name = pName,
  power = pPower; */

  @override
  String toString() {
    return '$name - $power';
  }
}