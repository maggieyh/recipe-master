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

    override func viewDidLoad() {
        super.viewDidLoad()
//        CloudSightConnection.sharedInstance().consumerKey = "5W7QzyWibqiVUhFTW-eoXg"
//        CloudSightConnection.sharedInstance().consumerSecret = "9ELnQ0CapgE5-6maaHxaWQ"
//        searchWithImage(UIImage(named: "Egg")!)
//        print("fasf")
        // These code snippets use an open-source library. http://unirest.io/objective-c
        var headers = ["Accept": "application/json"]
        var asyncConnection = UNIRest.get({(request: UNISimpleRequest) -> Void in
            request.url = "https://api.imagga.com/v1/tagging?url=http%3A%2F%2Fdocs.imagga.com%2Fstatic%2Fimages%2Fdocs%2Fsample%2Fjapan-605234_1280.jpg"
            request.headers = headers
            request.username = "your-api-key"
            request.password = "your-api-secret"
        }).asJsonAsync({(response: UNIHTTPJsonResponse, error: NSError) -> Void in
            var code = response.code
            var responseHeaders = response.headers
            var body = response.body
            var rawBody = response.rawBody
        })

        
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

