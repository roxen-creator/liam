import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../resources/color_manager.dart';
import '../resources/strings_manager.dart';

class CreateBlog extends StatefulWidget {
  const CreateBlog({super.key});

  @override
  State<CreateBlog> createState() => _CreateBlogState();
}

class _CreateBlogState extends State<CreateBlog> {
  // late File _image;
  XFile? _imageFile;

  @override
  Widget build(BuildContext context) {
    getImage() async {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      setState(() {
        _imageFile = image;
      });
    }

    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Post Blog',
              style: TextStyle(fontSize: 20, color: ColorManager.kPrimaryColor),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.file_upload_rounded,
                color: ColorManager.kTextColor,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width,
                  child: IconButton(
                    icon: const Icon(Icons.add_photo_alternate_outlined),
                    iconSize: 30,
                    onPressed: () {
                      getImage();
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent.shade400),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    labelText: AppStrings.blogTitle,
                    hintText: AppStrings.blogTitleHint,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent.shade400),
                    ),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    labelText: AppStrings.blogDesc,
                    hintText: AppStrings.blogDescHint,
                  ),
                  minLines: 20,
                  maxLines: 130,
                ),
              )
            ],
          ),
        ));
  }
}