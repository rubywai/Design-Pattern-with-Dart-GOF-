//31 / 2 /2021 Ruby Learner
//Let Assume fetch data is heavy operation method of fetching data
//We don't want to create every time object creation
//so we will clone this object but name and size are optional

void main(){
  List list = [1,2,3,4,5,6,7,8,9];
  DictionaryDb db1 = DictionaryDb( 'db1', 100);
  db1.fetchData(list); // fetching only this time


  DictionaryDb db2 = db1.clone(name: 'db2',size: 200);
  DictionaryDb db3 = db1.clone(size: 300);
  DictionaryDb db4 = db1.clone(name: 'db4');
  DictionaryDb db5 = db1.clone();

  print(db1.data);
  print(db2.data);
  print(db3.data);
  print(db4.data);
  print(db5.data);

  print(db1.toString());
  print(db2.toString());
  print(db3.toString());
  print(db4.toString());
  print(db5.toString());

}

class DictionaryDb{
  String dbName;
  int dbSize;
  List data;
  DictionaryDb(this.dbName,this.dbSize) ;

  DictionaryDb.clone(DictionaryDb readDb,{String name,int size}) {
    name == null ? dbName = readDb.dbName : dbName = name;
    size == null ? dbSize = readDb.dbSize : dbSize = size;

    this.data = readDb.data;

  }

  clone({String name,int size}) {
    return DictionaryDb.clone(this,name: name,size: size);
  }


  @override
  String toString() {
    return '$dbName $dbSize $data';
  }

  void fetchData(List list){
    print('Data is Fetching ${DateTime.now()}');
    this.data = list;
  }


}

