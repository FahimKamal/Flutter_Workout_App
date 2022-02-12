class WorkoutPlan {
  String title, img;

  WorkoutPlan({required this.title, required this.img});
}
class WorkoutVideoInfo {
  String title, time, thumbnail, videoUrl;

  WorkoutVideoInfo(
      {required this.title,
      required this.time,
      required this.thumbnail,
      required this.videoUrl});
}

class StaticData {
  static List<WorkoutVideoInfo> videoPlaylist = [
    WorkoutVideoInfo(
      title: 'Squat and Walk',
      time: '45 seconds',
      thumbnail: 'assets/squat1.jpg',
      videoUrl: 'oj4D4Nj63ic',
    ),
    WorkoutVideoInfo(
      title: 'Plie Squat and Heel Raises',
      time: '55 seconds',
      thumbnail: 'assets/squat1.jpg',
      videoUrl: '6Rs7nSMWoKo',
    ),
    WorkoutVideoInfo(
      title: 'Squat Kickback',
      time: '60 seconds',
      thumbnail: 'assets/squat1.jpg',
      videoUrl: 'qTMM98FWRPU',
    ),
    WorkoutVideoInfo(
      title: 'Squat with Side Leg Lift',
      time: '120 seconds',
      thumbnail: 'assets/squat1.jpg',
      videoUrl: 'OZoYxgT3DK0',
    ),
  ];

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
