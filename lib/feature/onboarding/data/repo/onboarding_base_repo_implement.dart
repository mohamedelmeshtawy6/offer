import 'package:offer/core/constant/app_assets_path.dart';
import 'package:offer/feature/onboarding/data/model/onboarding_model.dart';
import 'package:offer/feature/onboarding/data/repo/onboarding_base_repo.dart';

class OnBoardingBaseRepoImplement implements OnBoardingBaseRepo {

  @override
  List<OnBoardingModel> getOnboardingStaticData() {
    return [
      OnBoardingModel(
          title: "ORDER YOU FOOD NOW",
          imagepath: AppAssetsPath.food,
          description: "search for you favorite food and make your order "),
      OnBoardingModel(
        title: "CAREFULLY PREPARED",
        imagepath: AppAssetsPath.chefman,
        description: "all kind of foods are prepared in profissional way",
      ),
      OnBoardingModel(
        title: "FAST DELIVERY",
        imagepath: AppAssetsPath.deliveryman,
        description: "you can ask for delivery order to get it fast",
      ),

    
     
    ];
  }
}
