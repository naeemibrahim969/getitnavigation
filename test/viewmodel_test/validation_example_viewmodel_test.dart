import 'package:flutter_test/flutter_test.dart';
import 'package:stackedproj/ui/views/validation_example/validation_example_viewmodel.dart';

void main() {
  group('ValidationExampleViewModelTests -', () {

    group('canSubmit -',(){

      test('When construct canSubmit should be false',(){
         var model= ValidationExampleViewModel();
         expect(model.canSubmit,false);
      });

      test('When name is added but email and contact empty should be false ',(){
        var model= ValidationExampleViewModel();
        model.setName("Naeem");
        expect(model.canSubmit,false);
      });


      test('When name and email is added but empty contact  should be true',(){
        var model= ValidationExampleViewModel();
        model.setName("Naeem");
        model.setEmail("naeem.a@gmail.com");
        expect(model.canSubmit,true);
      });

      test('When name is added but contact is less then 9 characters with empty email should be false',(){
        var model= ValidationExampleViewModel();
        model.setName("Naeem");
        model.setMobileNumber('1213');
        expect(model.canSubmit,false);
      });


      test('When name is added and contact added with empty email should be true',(){
        var model= ValidationExampleViewModel();
        model.setName("Naeem");
        model.setMobileNumber('121382436543');
        expect(model.canSubmit,true);
      });



    });
  });
}