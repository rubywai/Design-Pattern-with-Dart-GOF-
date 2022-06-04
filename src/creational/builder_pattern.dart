//Builder Design pattern
class ComputerBuilder{
   String? os;
   int? ram;
   int? screenSize;
  ComputerBuilder setOs(String os){
    this.os = os;
    return this;
  }
  ComputerBuilder setRam(int ram){
    this.ram = ram;
    return this;
  }
  ComputerBuilder setScreenSize(int screenSize){
    this.screenSize = screenSize;
    return this;
  }
  Computer getPhone(){
    return Computer(os,ram,screenSize);
  }
}
class Computer{
  final String? os;
  final int? ram;
  final int? screenSize;
  Computer(this.os,this.ram,this.screenSize);
  @override
  String toString()
  {
    return "$os $ram gb $screenSize inches";
  }
}
void main(){
  Computer computer =(ComputerBuilder()
    ..setOs("MacOs")
    ..setRam(4)
    ..setScreenSize(14)
            )          
    .getPhone();
  print(computer.toString());
  
}
