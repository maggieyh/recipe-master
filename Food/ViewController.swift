//
//  ViewController.swift
//  Food
//
//  Created by yao  on 9/17/16.
//  Copyright © 2016 yao . All rights reserved.
//

import UIKit
import CloudSight
import AFNetworking
class ViewController: UIViewController {

    var query: CloudSightQuery!
    var image = UIImage(named: "some-food")!
    override func viewDidLoad() {
        super.viewDidLoad()
//        CloudSightConnection.sharedInstance().consumerKey = "5W7QzyWibqiVUhFTW-eoXg"
//        CloudSightConnection.sharedInstance().consumerSecret = "9ELnQ0CapgE5-6maaHxaWQ"
//        searchWithImage(UIImage(named: "Egg")!)
//        print("fasf")
        // These code snippets use an open-source library. http://unirest.io/objective-c
        CloudSightConnection.sharedInstance().consumerKey = "5W7QzyWibqiVUhFTW-eoXg"
        CloudSightConnection.sharedInstance().consumerSecret = "9ELnQ0CapgE5-6maaHxaWQ"
        
        print("f\n")
        searchWithImage(image)
        
    }

    func cloudSightQueryDidFinishIdentifying(query: CloudSightQuery) {
        print("identify")
        if query.skipReason != nil {
            NSLog("Skipped: %@", query.skipReason)
        }
        else {
            if(query.title == nil){
                print("Eror occured")
            }else{
                NSLog("Identified: %@", query.title)
                print("fff")
            }
        }
    }
    
    func searchWithImage(image: UIImage) {
        print("oo")
        let deviceIdentifier: String? = "something"
        let location = CLLocation()
        let imageData = UIImageJPEGRepresentation(image, 0.2)
        query = CloudSightQuery(image: imageData, atLocation: CGPoint(x: 0, y: 0), withDelegate: self, atPlacemark: location, withDeviceId: deviceIdentifier!)
        query.start()// Start the query process
        cloudSightQueryDidFinishIdentifying(query)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       
    }
    // Do any additional setup after loading the view, typically from a nib.
    
    // The output below is limited by 1 KB.
    // Please Sign Up (Free!) to remove this limitation.
    
    
   /* func searchWithImage(image: UIImage) {
        var deviceIdentifier: String? = "B339703D-66CF-5272-9DBF-8E5683D0ED3B"
        // This can be any unique identifier per device, and is optional - we like to use UUIDs
        var location: CLLocation? = nil
        // you can use the CLLocationManager to determine the user's location
        // We recommend sending a JPG image no larger than 1024x1024 and with a 0.7-0.8 compression quality,
        // you can reduce this on a Cellular network to 800x800 at quality = 0.4
        var imageData = UIImageJPEGRepresentation(image, 0.3);
        // Create the actual query object
        var query = CloudSightQuery(image: imageData, atLocation: CGPoint(x: 0,y: 0), withDelegate: self, atPlacemark: CLLocation(), withDeviceId: deviceIdentifier)
        // Start the query process
        query.start()
        cloudSightQueryDidFinishIdentifying(query)
    }
    // MARK: CloudSightQueryDelegate
    
    func cloudSightQueryDidFinishIdentifying(query: CloudSightQuery) {
        if query.skipReason != nil {
            print("Skipped: \(query.skipReason)")
        } else {
            if(query.title == nil){
                print("Error occured")
            }else{
                NSLog("Identified: %@", query.title)
                
            }
        }
    }
    
    
    func cloudSightQueryDidFail(query: CloudSightQuery, withError error: NSError?) {
        print("Error: \(error)")
    }
*/

}

