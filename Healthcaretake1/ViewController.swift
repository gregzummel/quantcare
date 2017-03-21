//
//  ViewController.swift
//  Healthcaretake1
//
//  Created by Greg Szumel on 3/19/17.
//  Copyright © 2017 Greg Szumel. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func go(sender: UIButton!) {
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "Prediction_Navigation")
        self.present(controller!, animated: true, completion: nil)
        
        
        let url = URL(string: "http://ec2-54-208-189-42.compute-1.amazonaws.com:8080/patient/predict")
        var request = URLRequest(url: url!)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let params = ["patientid": 12345]
        
        request.httpBody = try! JSONSerialization.data(withJSONObject: params)
        

        
        
        // Put call to server
        Alamofire.request(request).responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
                
            }
        }

        
    }

    
    @IBAction func manualInput(sender: UIButton!) {
        
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "Manual_Navigation")
        
        self.present(controller!, animated: true, completion: nil)
        
        
    }
    


}

