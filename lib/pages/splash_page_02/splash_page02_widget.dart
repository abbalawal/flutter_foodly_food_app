import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'splash_page02_model.dart';
export 'splash_page02_model.dart';

class SplashPage02Widget extends StatefulWidget {
  const SplashPage02Widget({Key? key}) : super(key: key);

  @override
  _SplashPage02WidgetState createState() => _SplashPage02WidgetState();
}

class _SplashPage02WidgetState extends State<SplashPage02Widget> {
  late SplashPage02Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashPage02Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 2000));

      context.pushNamed(
        'Onboarding_01',
        extra: <String, dynamic>{
          kTransitionInfoKey: TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 500),
          ),
        },
      );
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/FOODLY_ABU.png',
                          width: 150.0,
                          height: 100.0,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Ellipse_1005.png',
                  width: 177.0,
                  height: 177.0,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.00, 1.00),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Ellipse_1006.png',
                    width: 177.0,
                    height: 177.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
