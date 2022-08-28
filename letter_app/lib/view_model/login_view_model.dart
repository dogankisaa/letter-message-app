import 'package:letter_app/core/enums/login_type_enums.dart';
import 'package:letter_app/view_model/base_view_model.dart';

class LoginViewModel extends BaseViewModel {
  LoginTypeEnums typeStatus = LoginTypeEnums.Idle;

 

   startTyping() {
    typeStatus == LoginTypeEnums.Writing;
   
  }

   stopTyping() {
    typeStatus == LoginTypeEnums.Done;
    notifyListeners();
  }
}
