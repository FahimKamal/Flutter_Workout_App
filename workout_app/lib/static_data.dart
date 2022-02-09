class WorkoutPlan {
  String title, img;

  WorkoutPlan({required this.title, required this.img});
}
class VideoInfo {
  String title, time, thumbnail, videoUrl;

  VideoInfo(
      {required this.title,
      required this.time,
      required this.thumbnail,
      required this.videoUrl});
}

class StaticData {
  static List videoPlaylist = [
    VideoInfo(
      title: 'Squat and Walk',
      time: '45 seconds',
      thumbnail: 'assets/squat1.jpg',
      videoUrl: 'http://db.bslmeiyu.com/uploads/uploads/video/2021/08/21/1-%20Introduction.mp4',
    ),
    VideoInfo(
      title: 'Plie Squat and Heel Raises',
      time: '55 seconds',
      thumbnail: 'assets/squat1.jpg',
      videoUrl: 'https://img.bslmeiyu.com/uploads/20170706/The%20Bananas%20Song%20%20Counting%20Bananas%20%20Super%20Simple%20Songs.mp4',
    ),
    VideoInfo(
      title: 'Squat Kickback',
      time: '60 seconds',
      thumbnail: 'assets/squat1.jpg',
      videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    ),
    VideoInfo(
      title: 'Squat with Side Leg Lift',
      time: '120 seconds',
      thumbnail: 'assets/squat1.jpg',
      videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
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
