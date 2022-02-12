class WorkoutPlan {
  String title, img, description;

  WorkoutPlan({required this.title,required this.description ,required this.img});
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
  static List<WorkoutVideoInfo> lagWorkoutPlaylist() {
    return [
      WorkoutVideoInfo(
        title: 'Squat and Walk',
        time: '45 seconds',
        thumbnail: 'assets/legs/squat1.jpg',
        videoUrl: 'oj4D4Nj63ic',
      ),
      WorkoutVideoInfo(
        title: 'Plie Squat and Heel Raises',
        time: '55 seconds',
        thumbnail: 'assets/legs/squat2.jpg',
        videoUrl: '6Rs7nSMWoKo',
      ),
      WorkoutVideoInfo(
        title: 'Squat Kickback',
        time: '60 seconds',
        thumbnail: 'assets/legs/squat3.jpg',
        videoUrl: 'qTMM98FWRPU',
      ),
      WorkoutVideoInfo(
        title: 'Squat with Side Leg Lift',
        time: '120 seconds',
        thumbnail: 'assets/legs/squat4.jpg',
        videoUrl: 'OZoYxgT3DK0',
      ),
    ];
  }
  static List<WorkoutVideoInfo> gluesWorkoutPlaylist() {
    return [
      WorkoutVideoInfo(
        title: 'Squat and Walk',
        time: '45 seconds',
        thumbnail: 'assets/legs/squat1.jpg',
        videoUrl: 'oj4D4Nj63ic',
      ),
      WorkoutVideoInfo(
        title: 'Plie Squat and Heel Raises',
        time: '55 seconds',
        thumbnail: 'assets/legs/squat2.jpg',
        videoUrl: '6Rs7nSMWoKo',
      ),
      WorkoutVideoInfo(
        title: 'Squat Kickback',
        time: '60 seconds',
        thumbnail: 'assets/legs/squat3.jpg',
        videoUrl: 'qTMM98FWRPU',
      ),
      WorkoutVideoInfo(
        title: 'Squat with Side Leg Lift',
        time: '120 seconds',
        thumbnail: 'assets/legs/squat4.jpg',
        videoUrl: 'OZoYxgT3DK0',
      ),
    ];
  }
  static List<WorkoutVideoInfo> absWorkoutPlaylist() {
    return [
      WorkoutVideoInfo(
        title: 'Squat and Walk',
        time: '45 seconds',
        thumbnail: 'assets/legs/squat1.jpg',
        videoUrl: 'oj4D4Nj63ic',
      ),
      WorkoutVideoInfo(
        title: 'Plie Squat and Heel Raises',
        time: '55 seconds',
        thumbnail: 'assets/legs/squat2.jpg',
        videoUrl: '6Rs7nSMWoKo',
      ),
      WorkoutVideoInfo(
        title: 'Squat Kickback',
        time: '60 seconds',
        thumbnail: 'assets/legs/squat3.jpg',
        videoUrl: 'qTMM98FWRPU',
      ),
      WorkoutVideoInfo(
        title: 'Squat with Side Leg Lift',
        time: '120 seconds',
        thumbnail: 'assets/legs/squat4.jpg',
        videoUrl: 'OZoYxgT3DK0',
      ),
    ];
  }
  static List<WorkoutVideoInfo> armWorkoutPlaylist() {
    return [
      WorkoutVideoInfo(
        title: 'Squat and Walk',
        time: '45 seconds',
        thumbnail: 'assets/legs/squat1.jpg',
        videoUrl: 'oj4D4Nj63ic',
      ),
      WorkoutVideoInfo(
        title: 'Plie Squat and Heel Raises',
        time: '55 seconds',
        thumbnail: 'assets/legs/squat2.jpg',
        videoUrl: '6Rs7nSMWoKo',
      ),
      WorkoutVideoInfo(
        title: 'Squat Kickback',
        time: '60 seconds',
        thumbnail: 'assets/legs/squat3.jpg',
        videoUrl: 'qTMM98FWRPU',
      ),
      WorkoutVideoInfo(
        title: 'Squat with Side Leg Lift',
        time: '120 seconds',
        thumbnail: 'assets/legs/squat4.jpg',
        videoUrl: 'OZoYxgT3DK0',
      ),
    ];
  }

  static List workoutPlans = [
    WorkoutPlan(
      title: 'Glues',
      description: 'Glues Workout',
      img: 'assets/ex1.png',
    ),
    WorkoutPlan(
      title: 'Abs',
      description: 'Abs Workout',
      img: 'assets/ex2.png',
    ),
    WorkoutPlan(
      title: 'Legs',
      description: 'Legs Workout',
      img: 'assets/ex3.png',
    ),
    WorkoutPlan(
      title: 'Arms',
      description: 'Arms Workout',
      img: 'assets/ex4.png',
    ),
    WorkoutPlan(
      title: 'Abs',
      description: 'Abs Workout',
      img: 'assets/ex2.png',
    ),
    WorkoutPlan(
      title: 'Glues',
      description: 'Glues Workout',
      img: 'assets/ex1.png',
    ),
  ];
}
