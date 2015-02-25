//
//  AppDelegate.swift
//  Persistance KDH 23 FEB 2015
//
//  Created by Kathryn Hill on 2/23/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

// this func runs everytime app launches
// "dark" is value and "theme" is key
//  if key doesn't exist, it creates it with the value dark
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let defaults = NSUserDefaults.standardUserDefaults()
// defaults.setObject("light", forKey: "theme") - this overrides dark in app delegate, otherwise app defaults to dark
        
        let checkTheme: AnyObject? = defaults.objectForKey("theme")
//        user optional to check if it exists (?)
// if checktheme = only runs once when app starts
        
        if checkTheme == nil {
            defaults.setObject("dark", forKey: "theme")
        }
        
//  if default to theme has not been set, we set to dark
// Set our default with key theme and value dark
        
        
//        NSUserDefaults.standardUserDefaults().setObject("dark", forKey: "theme")
        return true
    }
//to set user default: nsuserdefault, set key and theme
        
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

