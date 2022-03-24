
class GroupModel{
  final title;
  final List<GroupModel> children;


  GroupModel(this.title, [this.children = const []]);
}