//
//  ViewController.swift
//  Object Mapper Ex
//
//  Created by EkambaramE on 31/03/16.
//  Copyright © 2016 EkambaramE. All rights reserved.
//

import ObjectMapper
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        let urlAsString = "http://api.geonames.org/citiesJSON?north=44.1&south=-9.9&east=-22.4&west=55.2&lang=de&username=demo"
        let url = NSURL(string: urlAsString)!
        let urlSession = NSURLSession.sharedSession()
        
        //2
        let jsonQuery = urlSession.dataTaskWithURL(url, completionHandler: { data, response, error -> Void in
            if (error != nil) {
                print(error!.localizedDescription)
            }
            let err: NSError? = nil
            
            do {
                // 3
                let jsonResult = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers) as! NSDictionary
                if (err != nil) {
                    print("JSON Error \(err!.localizedDescription)")
                } else {
                    
                    //JSON from Object Mapper
                    let user = Mapper<User>().map(jsonResult)
                 //   print("value : \(user?.lng)")
                  
//                    for value in (user?.geonames)! {
//                       print(value)
//                    }
                    
                    //To convert JSON from Object
                 
                    let JSONString = Mapper().toJSONString(user!, prettyPrint: false)
                    print("jsonStringh \(JSONString)")
                    
                    
                    let test = Mapper<User>().map(JSONString)
                    print("\test : \(test)")
                }
                
            } catch {
                
            }
            
            
        })
        // 5
        jsonQuery.resume()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

