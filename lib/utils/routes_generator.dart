// import 'package:flutter/material.dart';

// import '../views/active_exercises_view/active_exercises_view.dart';
// import '../views/barbell_back_squat_view/barbell_back_squat_view.dart';
// import '../views/complete_exercises_view/complete_exercises_view.dart';
// import '../views/empty_exercise_view/empty_exercise_view.dart';
// import '../views/exercise_selection_view/exercise_selection_view.dart';
// import '../views/log_view/log_view.dart';
// import '../views/login_view/login_view.dart';
// import '../views/profile_view/profile_view.dart';
// import '../views/setting_view/setting_view.dart';
// import '../views/signup_view/signup_view.dart';
// import '../views/splash_screen_view/splash_view.dart';
// import '../views/start_workout_view/start_workout_view.dart';

// class RouteGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case '/':
//         return MaterialPageRoute(builder: (_) => SplashScreen());
//       case '/login':
//         return MaterialPageRoute(builder: (_) => LogInScreen());
//       case '/signUp':
//         return MaterialPageRoute(builder: (_) => SignUpScreen());
//       case '/startWorkout':
//         return MaterialPageRoute(builder: (_) => StartWorkoutScreen());
//       case '/emptyWorkout':
//         return MaterialPageRoute(builder: (_) => EmptyExerciseScreen());
//       case '/activeExercise':
//         return MaterialPageRoute(builder: (_) => ActiveExercisesScreen());
//       case '/completeExercises':
//         return MaterialPageRoute(builder: (_) => CompleteExercisesScreen());
//       case '/exerciseSelectionScreen':
//         return MaterialPageRoute(builder: (_) => ExerciseSelectionScreen());
//       case '/barbellBackSquatScreen':
//         return MaterialPageRoute(builder: (_) => BarbellBackSquatScreen());
//       case '/profileScreen':
//         return MaterialPageRoute(builder: (_) => ProfileScreen());
//       case '/settingScreen':
//         return MaterialPageRoute(builder: (_) => SettingScreen());
//       case '/logScreen':
//         return MaterialPageRoute(builder: (_) => LogScreen());

//       default:
//         return _errorRoute();
//     }
//   }

//   static Route<dynamic> _errorRoute() {
//     return MaterialPageRoute(builder: (_) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Error'),
//         ),
//         body: Center(
//           child: Text('ERROR'),
//         ),
//       );
//     });
//   }
// }
