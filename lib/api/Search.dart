import 'unitdio.dart';

Future getResourceList<T>(String classfic,int page, int size) async {
  var formData = {
    "classfic": classfic,
    "Page": page ?? 1,
    "Size": size ?? 10,
  };
  var res = await DioUnits().request<T>(
    NWMethod.GET,
    "Search/GetResourcelist",
    params: formData
  );
  print(res);
  //return Dio().post("http://52.80.232.140/api/Search/GetResourcelist?classfic=7");
  return res;
}