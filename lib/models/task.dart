class Task{
  late final String name;
  bool isDone=false;
  Task({this.isDone=false,required this.name});
  void toggleDone(){
    isDone=!isDone;
  }

}