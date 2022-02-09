class WorkoutPlan {
  String title, img;

  WorkoutPlan({required this.title, required this.img});
}

class StaticData {
  static List workoutPlans = [
    WorkoutPlan(
      title: 'Glues',
      img: 'assets/ex1.png',
    ),
    WorkoutPlan(
      title: 'Abs',
      img: 'assets/ex2.png',
    ),
    WorkoutPlan(
      title: 'Legs',
      img: 'assets/ex3.png',
    ),
    WorkoutPlan(
      title: 'arms',
      img: 'assets/ex4.png',
    ),
    WorkoutPlan(
      title: 'Abs',
      img: 'assets/ex2.png',
    ),
    WorkoutPlan(
      title: 'Glues',
      img: 'assets/ex1.png',
    ),
  ];
}
