// ignore_for_file: file_names

class SectionsModel {
  String image;
  String name;
  SectionsModel({required this.image, required this.name});
}

SectionsModel one = SectionsModel(
    image: "https://etimg.etb2bimg.com/photo/81478822.cms",
    name: "Entertaiment");


SectionsModel three = SectionsModel(
    image:
        "https://www.timeshighereducation.com/student/sites/default/files/styles/default/public/different_sports.jpg?itok=CW5zK9vp",
    name: "Sports");



SectionsModel five = SectionsModel(
    image: "https://www.statnews.com/wp-content/uploads/2022/03/AdobeStock_246942922.jpeg",
    name: "Health");


List<SectionsModel> sectionsModel = [ five,  three,one];
