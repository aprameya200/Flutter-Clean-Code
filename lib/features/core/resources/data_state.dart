
import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T ? data;
  final DioError ? error;

  const DataState({this.data, this.error});
}

//can be used when data crud is success
class DataSuccess<T> extends DataState<T>{
   const DataSuccess(T data): super(data: data);
}

//can be used when data crud fails
class DataFailed<T> extends DataState<T>{
   const DataFailed(DioError error): super(error: error);
}