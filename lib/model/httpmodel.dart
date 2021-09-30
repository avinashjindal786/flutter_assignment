class HttpModel<T>{
  final bool  isSuccessful;
  final T  data ;
  final String  mess;
  final int  respo;
  HttpModel({required this.data, required this.isSuccessful,required this.mess, required this.respo});
}