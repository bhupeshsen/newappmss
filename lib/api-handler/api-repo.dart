import 'package:newappmss/api-handler/api-extention.dart';
import 'package:newappmss/constant/api_constants.dart';
import 'api-handler.dart';


class ApiRepository {
  final ApiBaseHelper _apiHelper;
  ApiRepository(this._apiHelper);

  // get top headlines of news
  Future getTopHeadLineNews(paramMap) async {
    return _apiHelper
        .getWithParam(ApiConstant.TOP_HEADLINES,paramMap)
        .execute((response) =>  response);
  }




}

