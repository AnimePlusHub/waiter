

import 'package:flutter/cupertino.dart';
import 'package:grpc/grpc.dart';

enum ApiStatus{success,error}


class ApiResponse<T>{
  final T? data;
  final ApiStatus status;
  final String? error;
  ApiResponse(this.data,this.status,this.error);

  T getData(){
    if(status == ApiStatus.success){
      return data!;
    }else{
      throw Exception("Response is not success");
    }
  }
}
class ApiHelper{
  late ClientChannel client;
  late CallOptions options;
  late String token;

  void init(ClientChannel client,String token){
    this.client = client;
    this.options = options;
    this.token = token;
  }
  Future<ApiResponse<Res>> doRequestWithOptions<Req,Res>(
      ResponseFuture<Res> Function(Req,{CallOptions? options}) Function(
      ClientChannel client)
      requestBuilder,
      Req req,
      CallOptions?opt,
      )async{
    final requestFunc = requestBuilder(client);
  final option = opt != null ? this.options.mergedWith(opt):this.options;
  try{
    final resp = await requestFunc(req,options: option);
    return ApiResponse(resp, ApiStatus.success, null);

  }catch(e){
    debugPrint(e.toString());
    if(e is GrpcError){
      return ApiResponse(null, ApiStatus.error, e.message ?? '发生未知错误');
    }
    return ApiResponse(null, ApiStatus.error, e.toString());
  }


  }

  Future<ApiResponse<Res>> doRequest<Req,Res>(
      ResponseFuture<Res> Function(Req,{CallOptions? options}) Function(
  ClientChannel client)
    requestBuilder,
    Req req
      )async{
      return doRequestWithOptions<Req,Res>(requestBuilder, req, null);
  }
}