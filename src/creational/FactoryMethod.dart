void main(){
 Car japan = CarFactory.Car("japan");
 Car china = CarFactory.Car("china");
 Car korea = CarFactory.Car("korea");

 japan.drive();
 china.drive();
 korea.drive();

}

//factory
class CarFactory{
  static Car(String car){
    switch(car){
      case "japan" : return JapanCar();
      break;
      case "china" : return ChineseCar();
      break;
      case "korea" : return KoreanCar();
      break;
      default : throw Exception("Car Not Found");
    }
  }
}

//abstract
abstract class Car{
  void drive();
}


class JapanCar extends Car{
  @override
  void drive() {
    print("Japannese Car is drive with Japanese Engine");
  }

}
class ChineseCar extends Car{
  @override
  void drive() {
    print("Chinese Car is drive with Electronic");
  }

}
class KoreanCar extends Car{
  @override
  void drive() {
    print("Korean Car is drive with Gas");// TODO: implement drive
  }

}