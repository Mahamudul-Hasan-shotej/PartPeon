import 'package:parts_peon/DataModel/AllCatagoryModel.dart';
import 'package:parts_peon/Model/Metarial/Services/api_calling_services.dart';

class AllCatagoryRepo {
  AllCatagoryModel allCatagoryModel = AllCatagoryModel();

  Future<AllCatagoryModel> fetchAllCatagory() async {
    final response = await AllApiCallingServices.instance.allCatagory();
    print("Response - $response");
    allCatagoryModel = allCatagoryModelFromJson(response.body);

    return allCatagoryModel;
  }
}
