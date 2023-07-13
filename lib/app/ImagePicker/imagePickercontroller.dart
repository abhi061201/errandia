import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class imagePickercontroller extends GetxController{

  RxString image_path= ''.obs;
  Future getImagefromgallery()async{

    final ImagePicker _picker= ImagePicker();
    final image= await _picker.pickImage(source: ImageSource.gallery,);
    if(image!=null)
    {
      image_path.value= image!.path.toString();
    }
  }

  Future getimagefromCamera ()async{

    final ImagePicker _picker= ImagePicker();
    final image= await _picker.pickImage(source: ImageSource.camera);
    if(image!=Null)
    {
      image_path.value= image!.path.toString();
    }
  }

  Future reset() async{
    image_path.value= '';
  }


}