import 'package:flutter/material.dart';
import 'package:store_project/bloc/cart/cart_bloc.dart';
import 'package:store_project/bloc/wishlist_bloc/wishlist_bloc.dart';
import 'package:store_project/config/app_router.dart';
import 'package:store_project/config/theme.dart';
import 'package:store_project/screens/screens.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_project/simple_bloc_observer.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WishlistBloc()..add(StartWishlist())),
        BlocProvider(create: (_) => CartBloc()..add(CartStarted())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Store',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}
