import 'package:mvvm/data/response/status.dart';

class ApiResponse<T>{
  Status? status;
  T? data;
  String? message;

  ApiResponse({this.status,this.data,this.message});

  ApiResponse.loading() : status=Status.LOADING;
  ApiResponse.data() : status=Status.COMPLETED;
  ApiResponse.message() : status=Status.ERROR;

  @override
  String toString() {
    return 'Status: $status \nData: $data \nMessage: $message';
  }
}