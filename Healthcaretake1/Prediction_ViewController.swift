//
//  Manual_Input_ViewController.swift
//  Healthcaretake1
//
//  Created by Greg Szumel on 3/19/17.
//  Copyright © 2017 Greg Szumel. All rights reserved.
//

import UIKit

class Prediction_ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
        
        navigationItem.leftBarButtonItem = cancelButton
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func done(sender: UIButton) {
        //self.dismiss(animated: true, completion: nil)
        self.view.window!.rootViewController?.dismiss(animated: true, completion: nil)

    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
