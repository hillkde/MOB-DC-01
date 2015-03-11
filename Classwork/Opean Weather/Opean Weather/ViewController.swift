//
//  ViewController.swift
//  Opean Weather
//
//  Created by Kathryn Hill on 3/9/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var weatherDescription: UILabel!
    

    @IBOutlet weak var city: UITextField!
    
    @IBOutlet weak var state: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        Weather.retrieveWeather("washington,dc") { (weather) -> Void in
            self.weatherDescription.text = weather.friendlyWeather
            println("The temp is \(weather.fahrenheit)")
    }
}
    
//    func getWeather(locationToLoad: String) {
//        
//        if let url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(locationToLoad)") {
//            let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
//                
//                if let weatherDict = NSJSONSerialization.JSONObjectWithData(data, options: .allZeros, error: nil) as? NSDictionary {
//                    if let weather = weatherDict["weather"] as? NSArray {
//                        if let firstItem = weather[0] as? NSDictionary {
//                            if let description = firstItem["description"] as? NSString {
//                                dispatch_async(dispatch_get_main_queue(), { () -> Void in
//                                    self.weatherDescription.text = description
//                                })
//                            }
//                        }
//                    }
//                }
//                
//            })
//            task.resume()
//        }
//
//    }
    

    @IBAction func updateWeather(sender: AnyObject) {
        weatherDescription.text = "Loading..."
        sleep(2)
//        Weather.retrieveWeather(city.text + "," + state.text)
//       obejct that comes back is in the form of "temporary weather")
        Weather.retrieveWeather(self.city.text + "," + self.state.text) { (weather) -> Void in
            self.weatherDescription.text = weather.friendlyWeather
            println("The temp is \(weather.fahrenheit)")
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

