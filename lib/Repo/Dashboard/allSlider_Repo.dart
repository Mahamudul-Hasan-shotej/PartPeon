import 'package:parts_peon/DataModel/SliderModel.dart';
import 'package:parts_peon/Model/Metarial/Services/api_calling_services.dart';

class AllSliderModel {
  SliderModel allSliderModel = SliderModel();

  Future<SliderModel> fetchAllSlider() async {
    final response = await AllApiCallingServices.instance.allSlider();
    print("Response - $response");
    allSliderModel = sliderModelFromJson(response.body);

    return allSliderModel;
  }
}
