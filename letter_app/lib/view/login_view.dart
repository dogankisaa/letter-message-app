import 'package:flutter/material.dart';
import 'package:letter_app/core/enums/login_type_enums.dart';
import 'package:letter_app/view_model/login_view_model.dart';
import 'package:provider/provider.dart';

import '../theme/app_padding_theme.dart';

class LoginView extends StatelessWidget {
 

   late BuildContext _context;
  late LoginViewModel _viewModel;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(value: _viewModel = LoginViewModel(),
    builder:(context, child) {
      _context = context;
      return Scaffold(
        body: Padding(
          padding:  AppPaddings.defaultHorizontalPadding,
          child: Center(
            child: Consumer(
              builder: (context, value, child) {
                return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  typeStatusGif(),
                  TextFormField(
                    onEditingComplete:() => _viewModel.stopTyping(),
                    onChanged:(value) => _viewModel.startTyping(),
                   
                  ),
                ],
              );
              },
            )
            ,
          ),
        ),
      );
    });

  }

  Widget typeStatusGif(){
  return Consumer<LoginViewModel>(
    builder: (context, value, child) {
      
      if(value.typeStatus == LoginTypeEnums.Idle){
        print(value.typeStatus);
return Image.network("https://i.gifer.com/5UKD.gif");
      } else if(value.typeStatus == LoginTypeEnums.Writing){
        print(value.typeStatus);
        return Text("Writing...");
      } else {
        return Text("Done...");
      }
      
    },
  );
}
}

