// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:get/state_manager.dart';

// class CounterController extends GetxController {
  // RxInt index = 0.obs;
  // int indexTow = 0;

  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   super.onInit();
  //   getCourses();
  // }

  // void increamint() {
  //   index.value++;
  // }

  // void increamintTow() {
  //   indexTow++;
  //   update();
  // }

  // final array = [].obs;

  // Future<void> getCourses() async {
  //   await Future.delayed(const Duration(seconds: 3));

  //   final retrunedArray = ["hello", "world", "first", "one"];
  //   array.value = retrunedArray;
  // }

  // Future<List<String>> getCourses() async {
  //   await Future.delayed(const Duration(seconds: 3));

  //   final retrunedArray = ["hello", "world", "first", "one"];
  //   return retrunedArray;
  // }
// }



//   CourseModel copyWith({
//     String? name,
//     String? description,
//     String? imageUrl,
//   }) {
//     return CourseModel(
//       name: name ?? this.name,
//       description: description ?? this.description,
//       imageUrl: imageUrl ?? this.imageUrl,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'name': name,
//       'description': description,
//       'imageUrl': imageUrl,
//     };
//   }

//   factory CourseModel.fromMap(Map<String, dynamic> map) {
//     return CourseModel(
//       name: map['name'] as String,
//       description: map['description'] as String,
//       imageUrl: map['imageUrl'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory CourseModel.fromJson(String source) =>
//       CourseModel.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() =>
//       'CourseModel(name: $name, description: $description, imageUrl: $imageUrl)';

//   @override
//   bool operator ==(covariant CourseModel other) {
//     if (identical(this, other)) return true;

//     return other.name == name &&
//         other.description == description &&
//         other.imageUrl == imageUrl;
//   }

//   @override
//   int get hashCode => name.hashCode ^ description.hashCode ^ imageUrl.hashCode;
// }
