import 'package:dio/dio.dart';
import 'dart:async';

enum NWMethod {
  GET,
  POST,
  DELETE,
  PUT
}
//使用：NWMethodValues[NWMethod.POST]
const NWMethodValues = {
  NWMethod.GET: "get",
  NWMethod.POST: "post",
  NWMethod.DELETE: "delete",
  NWMethod.PUT: "put"
};
// 错误实体
class ErrorEntity {
  int code;
  String message;
  ErrorEntity({this.code, this.message});
}

class NWApi {
  static final baseApi = "http://52.80.232.140/api/";
  static final loginPath = "user/login";//接口返回：{"code": int, "message": "String", "data": {"account": "String", "password": "String"}}
  static final queryListPath = "/query/list";//接口返回：{"code": ing, "message": "String", "data": [int, int, String, int, String, int]}
  static final queryListJsonPath = "/query/listjson";//接口返回：{"code": int, "message": "String", "data": [{"account": "String", "password": "String"}， {"account": "String", "password": "String"}]}
}

class DioUnits {
  static final DioUnits _shared = DioUnits._internal();
  factory DioUnits() => _shared;
  Dio dio;
  DioUnits._internal() {
    if (dio == null) {
      BaseOptions options = BaseOptions(
        baseUrl: NWApi.baseApi,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
        receiveDataWhenStatusError: false,
        connectTimeout: 30000,
        receiveTimeout: 3000,
      );
      dio = Dio(options);
    }
  }

  // 请求，返回参数为 response
  // method：请求方法，NWMethod.POST等
  // path：请求地址
  // params：请求参数
  // success：请求成功回调
  // error：请求失败回调
  Future request<T>(NWMethod method, String path, {Map<String, dynamic> params, Function(T) success, Function(ErrorEntity) error}) async {
    try {
      Response response = await dio.request(path, queryParameters: params, options: Options(method: NWMethodValues[method]));
      return response;
    } on DioError catch(e) {
      error(createErrorEntity(e));
    }
  }
  // 错误信息
  ErrorEntity createErrorEntity(DioError error) {
    switch (error.type) {
      case DioErrorType.CANCEL:{
        return ErrorEntity(code: -1, message: "请求取消");
      }
      break;
      case DioErrorType.CONNECT_TIMEOUT:{
        return ErrorEntity(code: -1, message: "连接超时");
      }
      break;
      case DioErrorType.SEND_TIMEOUT:{
        return ErrorEntity(code: -1, message: "请求超时");
      }
      break;
      case DioErrorType.RECEIVE_TIMEOUT:{
        return ErrorEntity(code: -1, message: "响应超时");
      }
      break;
      case DioErrorType.RESPONSE:{
        try {
          int errCode = error.response.statusCode;
          // String errMsg = error.response.statusMessage;
          switch (errCode) {
            case 400: {
              return ErrorEntity(code: errCode, message: "请求语法错误");
            }
            break;
            case 403: {
              return ErrorEntity(code: errCode, message: "服务器拒绝执行");
            }
            break;
            case 404: {
              return ErrorEntity(code: errCode, message: "无法连接服务器");
            }
            break;
            case 405: {
              return ErrorEntity(code: errCode, message: "请求方法被禁止");
            }
            break;
            case 500: {
              return ErrorEntity(code: errCode, message: "服务器内部错误");
            }
            break;
            case 502: {
              return ErrorEntity(code: errCode, message: "无效的请求");
            }
            break;
            case 503: {
              return ErrorEntity(code: errCode, message: "服务器挂了");
            }
            break;
            case 505: {
              return ErrorEntity(code: errCode, message: "不支持HTTP协议请求");
            }
            break;
            default: {
              return ErrorEntity(code: errCode, message: "未知错误");
            }
          }
        } on Exception catch(_) {
          return ErrorEntity(code: -1, message: "未知错误");
        }
      }
      break;
      default: {
        return ErrorEntity(code: -1, message: error.message);
      }
    }
  }
}