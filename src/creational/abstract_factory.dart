abstract class Car{
  String getCar();
}
class JPToyotaCar extends Car{
  @override
  String getCar() {
    return "Japan Toyota Car";
  }
}
class JPHondaCar extends Car{
  @override
  String getCar() {
    return "Japan. Honda Car";
  }  
}
class KoreaKIACar extends Car{
  @override
  String getCar() {
    return "Korea KIA Car";
  }
}
class KoreaHondaiCar extends Car{
  @override
  String getCar() {
    return "Korea Hondai Car";
  }
}

abstract class CarFactory{
  Car getCar();
}

class JapanCarFactory extends CarFactory{
  final String car;
  JapanCarFactory(this.car);
  @override
  Car getCar() {
    if(car == "toyota"){
      return JPToyotaCar();
    }
    else {
      return JPHondaCar();
    }
  }
}
class KoreaCarFactory extends CarFactory{
  final String car;
  KoreaCarFactory(this.car);
  @override
  Car getCar() {
    if(car == "kia"){
      return KoreaKIACar();
    }
    return KoreaHondaiCar();
  }
  
}

void main(){
  CarFactory japanCar1 = JapanCarFactory("toyota");
  print(japanCar1.getCar().getCar());
  CarFactory japanCar2 = JapanCarFactory("honda");
  print(japanCar2.getCar().getCar());
  CarFactory koreaCar1 = KoreaCarFactory("kia");
  print(koreaCar1.getCar().getCar());
  CarFactory koreaCar2 = JapanCarFactory("hondai");
  print(koreaCar2.getCar().getCar());
}
