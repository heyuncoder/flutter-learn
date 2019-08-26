import 'package:fluro/fluro.dart';

import 'package:flutter/material.dart';

import '../pages/home/home.dart';
import '../pages/layouts/index.dart';
import '../pages/components/index.dart';

class Routers {
  static void configureRoutes(Router router){

    router.notFoundHandler = new Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params
    ) {
      print("ROUTE WAS NOT FOUND !!!");
    });

    var homeHandler = Handler(handlerFunc: (BuildContext context, Map<String,dynamic> params){
      return MyHomePage();
    });
    
    var layoutsHandler = Handler(handlerFunc: (BuildContext context, [Map<String,dynamic> params]){
      return Layouts(params: params);
    });

    var componentsHandler = Handler(handlerFunc: (BuildContext context, [Map<String,dynamic> params]){
      return Components(params: params);
    });

    
    /// 第一个参数是路由地址，第二个参数是页面跳转和传参，第三个参数是默认的转场动画,例如
    /// router.define("users/:id", handler: usersHandler, transitionType: TransitionType.inFromLeft);
    router.define('/', handler: homeHandler);
    router.define('/home', handler: homeHandler);
    router.define('/layouts', handler: layoutsHandler);
    router.define('/components/:id', handler: componentsHandler);
    
  }
  
}