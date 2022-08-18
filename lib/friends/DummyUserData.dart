class UserModel {
  final String name;
  final List<String> method;
  final String profileImage;
  final int score;
  final String description;
  bool isFriend;

  UserModel(this.name, this.method, this.profileImage, this.score, this.description, this.isFriend);
}

List<UserModel> DummyUserData = [
  UserModel("이닦는 문어",["치실","워터픽","가글"],"images/component/avatars/avatar1.png",88, "양치를 합시다", true),
  UserModel("워터 픽미업",["치실","가글"],"images/component/avatars/avatar2.png",86, "양치를 합시다", true),
  UserModel("다혜",["워터픽","가글"],"images/component/avatars/avatar3.png",84, "양치를 합시다", false),
  UserModel("지우",["가글"],"images/component/avatars/avatar4.png",79, "양치를 합시다", true),
  UserModel("세수세포",["치실","가글"],"images/component/avatars/avatar5.png",75, "양치를 합시다", false),
  UserModel("덜렁이",[],"images/component/avatars/avatar1.png",32, "양치를 합시다", true),
  UserModel("깔끔이",["치실","워터픽","가글"],"images/component/avatars/avatar2.png",91, "양치를 합시다", true),
  UserModel("한동이",["치실","워터픽","가글"],"images/component/avatars/avatar3.png",94, "양치를 합시다", true),
  UserModel("느헴이",["워터픽"],"images/component/avatars/avatar4.png",74, "양치를 합시다", true),
  UserModel("한동이",["치실","워터픽","가글"],"images/component/avatars/avatar5.png",64, "양치를 합시다", false),
  UserModel("한동이2",["치실","워터픽","가글"],"images/component/avatars/avatar1.png",55, "양치를 합시다", false),
  UserModel("한동이3",["치실","워터픽","가글"],"images/component/avatars/avatar2.png",72, "양치를 합시다", false),
  UserModel("한동이4",["치실","워터픽","가글"],"images/component/avatars/avatar3.png",59, "양치를 합시다", false),
  UserModel("한동이5",["치실","워터픽","가글"],"images/component/avatars/avatar4.png",43, "양치를 합시다", false),
  MyProfile
];

UserModel MyProfile = new UserModel("양치기", ["치실","워터픽"], "images/home/avatar.png", 87, "양치를 합시다", true);