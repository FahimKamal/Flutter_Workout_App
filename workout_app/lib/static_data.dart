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
        title: 'Bottoms-up lunge',
        time: '45 seconds',
        thumbnail: 'assets/glues/Bottoms-up lunge.jpg',
        videoUrl: 'JhshtxGkjuU',
      ),
      WorkoutVideoInfo(
        title: 'Side skaters',
        time: '55 seconds',
        thumbnail: 'assets/glues/Side skaters.jpg',
        videoUrl: '4RuxhVJ4-pg',
      ),
      WorkoutVideoInfo(
        title: 'Glute bridge',
        time: '60 seconds',
        thumbnail: 'assets/glues/Glute bridge.jpg',
        videoUrl: 'wPM8icPu6H8',
      ),
      WorkoutVideoInfo(
        title: 'Chair squat jump',
        time: '120 seconds',
        thumbnail: 'assets/glues/Chair squat jump.jpg',
        videoUrl: 'vVpojWs8lQg',
      ),
    ];
  }
  static List<WorkoutVideoInfo> absWorkoutPlaylist() {
    return [
      WorkoutVideoInfo(
        title: 'Russian twist',
        time: '45 seconds',
        thumbnail: 'assets/abs/Russian twist.jpg',
        videoUrl: 'wkD8rjkodUI',
      ),
      WorkoutVideoInfo(
        title: 'Side plank with dips',
        time: '55 seconds',
        thumbnail: 'assets/abs/Side plank with dips.jpg',
        videoUrl: 'ibyUMvywMTc',
      ),
      WorkoutVideoInfo(
        title: 'Standing knee to hands',
        time: '60 seconds',
        thumbnail: 'assets/abs/Standing knee to hands.jpg',
        videoUrl: 'YUpeReHQl_w',
      ),
      WorkoutVideoInfo(
        title: 'Half sit up',
        time: '120 seconds',
        thumbnail: 'assets/abs/Half sit up.jpg',
        videoUrl: 's3PPU_2z9qo',
      ),
    ];
  }
  static List<WorkoutVideoInfo> armWorkoutPlaylist() {
    return [
      WorkoutVideoInfo(
        title: 'Barbell Bicep Curl',
        time: '45 seconds',
        thumbnail: 'assets/arms/BARBELL BICEP CURL.jpg',
        videoUrl: 'dDI8ClxRS04',
      ),
      WorkoutVideoInfo(
        title: 'Dumbbell Preacher Curl',
        time: '55 seconds',
        thumbnail: 'assets/arms/DUMBBELL PREACHER CURL.jpg',
        videoUrl: 'DoCWeUBA0Gs',
      ),
      WorkoutVideoInfo(
        title: 'Cable Bicep Curl',
        time: '60 seconds',
        thumbnail: 'assets/arms/CABLE BICEP CURL.jpg',
        videoUrl: '85kXYq7Ssh4',
      ),
      WorkoutVideoInfo(
        title: 'Skull Crusher Exercise',
        time: '120 seconds',
        thumbnail: 'assets/arms/SKULL CRUSHER.jpg',
        videoUrl: 'd_KZxkY_0cM',
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
