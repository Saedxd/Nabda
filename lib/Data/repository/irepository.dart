





import 'package:testnew/models/UserDataModel/UserDataModel.dart';

abstract class IRepository {


  // Future<GetGenderModel> GetGenders();
  // Future<UserData> GoogleLogin(
  //     String Email,
  //     String name,
  //     String fcmToken,
  //     String avatar,
  //     );
  Future<UserDataModel> Login(String Email,String Password,String fcmToken,);
}
