class PagerModel {
  String title;
  String subTitle;

  PagerModel({required this.title, required this.subTitle});
}

List<PagerModel> pageModel = [
  PagerModel(
      title: "Unlimited\nentertainment,\none low price",
      subTitle: "All of Netflix, starting at just \$149"),
  PagerModel(
      title: "Download and\nwatch offline",
      subTitle: "Always have something to watch offline."),
  PagerModel(
      title: "No annoying\ncontracts", subTitle: "Join today, cancel anytime."),
  PagerModel(
      title: "watch\neverywhere",
      subTitle: "Stream on your phone, tablet,\n laptop, Tv and more")
];
