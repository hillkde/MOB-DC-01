//
//  MapVC.swift
//  FINAL App KDH
//
//  Created by Kathryn Hill on 3/22/15.
//  Copyright (c) 2015 Kathryn Hill. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import AddressBookUI

class MapVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    
    @IBOutlet weak var mapView: MKMapView!
    let locman = CLLocationManager()
    let searchRadius: CLLocationDistance = 50000
    
    @IBAction func backButtonMap(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.tabBar.hidden = true
        
        self.map.mapType = MKMapType.Hybrid
        
        let initialLocation = CLLocation(latitude: 39.9582, longitude: -75.1730)
        centerMapOnLocation(initialLocation)
        
        self.map.delegate = self
        self.locman.delegate = self
        self.locman.desiredAccuracy = kCLLocationAccuracyBest
        self.locman.activityType = CLActivityType.Fitness
        self.locman.startUpdatingLocation
    }
    
    func determineLocStatus() -> Bool {
        let isOkay = CLLocationManager.locationServicesEnabled()
        if !isOkay {
            return true
        }
        
        let status = CLLocationManager.authorizationStatus()
        switch status {
        case CLAuthorizationStatus.Authorized, CLAuthorizationStatus.AuthorizedWhenInUse:
            return true
        case .NotDetermined:
            self.locman.requestWhenInUseAuthorization()
            return true
        case .Restricted:
            return false
        case .Denied:
            return false
        }
    }
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations location: [AnyObject]!) {
        println("Updated Location!")
        let loc = locations.last as CLLocation
        let coordinates = loc.coordinate
        
        println("You are currently at \(coordinates.latitude), \(coordinates.longitude)")
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, self.searchRadius * 2.0, self.searchRadius * 2.0)
        self.map.setRegion(coordinateRegion, animated: true)
    }
    
    @IBAction func currentLocation(sender: AnyObject) {
        self.locman.requestWhenInUseAuthorization()
        self.map.userTrackingMode = MKUserTrackingMode.Follow
        let currentLocation = MKMapItem.mapItemForCurrentLocation()
        currentLocation.openInMapsWithLaunchOptions([MKLaunchOptionsMapTypeKey: MKMapType.Hybrid.rawValue])
    }
    
    
//    ****TO DO -- find closest location of contact's office:
    @IBAction func closestQube(sender: AnyObject) {
        if !determineLocStatus() {
            println("Need to enable location under settings.")
            return
        }
        
        let userLoc = self.map.userLocation
        let loc = userLoc.Location
        
        if loc == nil {
            println("Where are you?!")
            return
        }
        
        let searchReq = MKLocalSearchRequest()
        searchReq.naturalLanguageQuery = "Capital One, McLean"
        searchReq.region = self.map.region
        
        let search = MKLocalSearch(request: searchReq)
        search.startWithCompletionHandler { (response, error) -> Void in
            if response == nil {
                println(error)
                return
            }
            
            self.map.showsUserLocation = false
            let nearbyQube = response.mapItems[0] as MKMapItem
            let place = qubeLocation.placemark
            let loc = place.location.coordinate
            let region = MKCoordinateRegionMakeWithDistance(loc, 5000, 5000)
            self.map.setRegion(region, animated: true)
            let business = MKPointAnnotation()
            qubeLocation.title = business.name
            qubeLocation.subtitle = business.phoneNumber
            qubeLocation.coordinate = loc
            
            self.map.addAnnotation(capitalOne)
            
//      Do I need to hard code in Cap One lat/long?
//      Latitude:38.925752, Longitude:-77.212281
        
    }
    
        
//    *****TO DO - find location of my office listed in my Qube Card:
//    address label = addressLabel2 (in existingVC2)
        
    @IBAction func myQubeLocation(sender: AnyObject) {
        self.locman.requestWhenInUseAuthorization()
        let searchReq = MKLocalSearchRequest()
        searchReq.naturalLanguageQuery = "1776, Washington, DC"
        searchReq.region = self.map.region
        
        let search = MKLocalSearch(request: searchReq)
        search.startWithCompletionHandler { (response, error) -> Void in
            if response == nil {
                println(error)
                return
            }
        
            self.map.showsUserLocation = false
            let myQube = response.mapItems[0] as MKMapItem
            let place = myQubeLocation.placemark
            let loc = place.location.coordinate
            let region = MKCoordinateRegionMakeWithDistance(loc, 5000, 5000)
            self.map.setRegion(region, animated: true)
            let business = MKPointAnnotation()
            myQubeLocation.title = business.name
            myQubeLocation.subtitle = business.phoneNumber
            myQubeLocation.coordinate = loc
            
            self.map.addAnnotation("1776")
    }
    

//    *****TO DO - Search location of address, converts address to lat/long:
    @IBAction func searchLocation(sender: AnyObject) {
       let loc = self.map.userLocation.location
        if loc == nil {
            println("Cannot find locaton!")
            return
        }
        
        let geocode = CLGeocoder()
        geocode.geocodeAddressString(loc, completionHandler: {
            (placemarks: [AnyObject]!, error:NSError!) -> Void in
            if placemarks != nil {
                let placemark = placemarks[0] as CLPlacemark
                let address = ABCreateStringWithAddressDictionary(placemark.addressDictionary, false)
                println("This is:\n\(lat, long)")
            }
        })
    }
        
    
//        geocode.reverseGeocodeLocation(loc, completionHandler: {

//    [geocoder geocodeAddressString:@"1 Infinite Loop"
//    completionHandler:^(NSArray* placemarks, NSError* error){
//    for (CLPlacemark* aPlacemark in placemarks)
//    {
//    // Process the placemark.
//    }
//    }]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        }
    }
}

