void main(){
  ApiService apiService = ApiService();
  ApiService apiService2 = ApiService();
  ApiService apiService3 = ApiService();
  //all has code will be same in singleton
  print(apiService.hashCode);
  print(apiService2.hashCode);
  print(apiService3.hashCode);
}

class ApiService{
  static final ApiService _apiService = ApiService._create();
  factory ApiService() => _apiService;
  ApiService._create(){
    print('First Time Created');
  }
}