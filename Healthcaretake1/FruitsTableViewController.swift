//
//  FruitsTableViewController.swift
//  Healthcaretake1
//
//  Created by Greg Szumel on 3/20/17.
//  Copyright © 2017 Greg Szumel. All rights reserved.
//

import UIKit

class FruitsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancel))
        
        navigationItem.leftBarButtonItem = cancelButton
        
        let nextButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
        
        navigationItem.rightBarButtonItem = nextButton
        
        
    }
    
    
    func cancel(sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func done(sender:UIButton){
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "Prediction_Navigation")
        self.present(controller!, animated: true, completion: nil)
    }
    
    
    var fruits = ["Primary Diagnosis", "Secondary Diagnosis(es)", "Number of NFH visits", "Number of Previous Readmits", "Age", "Leave against medical advice",
                  "Surgery"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fruits.count
    }
    
    

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row<=1){
            let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
            cell.textLabel?.text = fruits[indexPath.row]
            cell.detailTextLabel?.text = ""
            cell.accessoryType = .disclosureIndicator
            return cell
            
        }
        else if (indexPath.row>1 && indexPath.row<=4){
            let cell = tableView.dequeueReusableCell(withIdentifier: "Int_Input_Cell", for: indexPath) as! Int_Input_TableViewCell
            
            cell.label?.text = fruits[indexPath.row]
            cell.int_input.text = ""
            cell.int_input.keyboardType = UIKeyboardType.decimalPad
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "Switch_cell", for: indexPath) as! Switch_TableViewCell
            cell.label?.text = fruits[indexPath.row]
            return cell
        }
        
        
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ""
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0{
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "Diagnosis_Table") // Your destination
            navigationController?.pushViewController(controller!, animated: true)
        }
        else if indexPath.row == 1{
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "Sec_Diagnosis_Table") // Your destination
            navigationController?.pushViewController(controller!, animated: true)
            
        }
        

    }
}
