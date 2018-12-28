//a
//  Created by adong666666 on 2018/5/13.  Copyright © 2018年 adong666666. All rights reserved.

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        //self.window?.rootViewController = UINavigationController(rootViewController: SixthViewController())
        self.window=UIWindow(frame: UIScreen.main.bounds)
        self.window!.rootViewController = UITabBarController()
        self.window!.makeKeyAndVisible()//

        let viewController1 = ViewController()
        let viewController4 = ForthViewController()
        let viewController5 = SecondViewController()
        let viewController6 = SixthViewController()
        let tabViewController = UITabBarController()
        tabViewController.viewControllers = [viewController6, viewController4, viewController1, viewController5]
        tabViewController.selectedIndex = 0
        tabViewController.view.backgroundColor = UIColor.white
        //ViewController().tabBarController?.hidesBottomBarWhenPushed = false
        //SecondViewController().tabBarController?.hidesBottomBarWhenPushed = false
        //ForthViewController().tabBarController?.hidesBottomBarWhenPushed = false
        //SixthViewController().tabBarController?.hidesBottomBarWhenPushed = false
       //tabViewController.hidesBottomBarWhenPushed = false
        self.window?.rootViewController = tabViewController

        let tabBar = tabViewController.tabBar
        let item3 = tabBar.items![0]
        item3.image = UIImage(named: "6")
        item3.title = "校园"
        let item1 = tabBar.items![1]
        item1.image = UIImage(named: "4")
        item1.title = "日程"
        let item = tabBar.items![2]
        item.image = UIImage(named: "3")
        item.title = "发现"
        let item2 = tabBar.items![3]
        item2.image = UIImage(named: "7")
        item2.title = "我的"

        //self.window?.rootViewController = TwentysixthViewController(menuViewController: TwentyfifthViewController(), contentViewController: UIViewController())

        // Override point for customization after application launch.
        //let firstViewController = ViewController()
        //let rootNavigationViewController =

       /* let thirdViewController = ThirdViewController()
        //_ = UINavigationController(rootViewController: thirdViewController)
        let rootNavigationViewController2 = UINavigationController(rootViewController: thirdViewController)
        self.window!.rootViewController = rootNavigationViewController2*/
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {

    }

    func applicationDidEnterBackground(_ application: UIApplication) {

    }

    func applicationWillEnterForeground(_ application: UIApplication) {

    }

    func applicationDidBecomeActive(_ application: UIApplication) {

    }

    func applicationWillTerminate(_ application: UIApplication) {

    }

}
