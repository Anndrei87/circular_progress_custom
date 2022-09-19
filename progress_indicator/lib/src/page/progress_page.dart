import 'package:flutter/material.dart';
import 'package:progress_indicator/src/painter/circular_progress.dart';
import 'package:progress_indicator/src/widgets/progress_circular_indicator/circular_progress_widget.dart';
import 'package:progress_indicator/src/widgets/progress_circular_indicator/linear_progress_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  final maxProgress = 100.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    );
    _animation = Tween<double>(
      begin: 0,
      end: maxProgress,
    ).animate(_animationController);

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Two progress indicator custom"),
      ),
      body: AnimatedBuilder(
          animation: _animationController,
          builder: (context, snapshot) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LinearProgressCustom(animation: _animation),
                  const Divider(),
                  CircularProgressCustom(animation: _animation)
                ],
              ),
            );
          }),
    );
  }
}
