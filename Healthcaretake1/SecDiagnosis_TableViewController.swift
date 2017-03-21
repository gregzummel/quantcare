//
//  Diagnosis_TableViewController.swift
//  Healthcaretake1
//
//  Created by Greg Szumel on 3/20/17.
//  Copyright © 2017 Greg Szumel. All rights reserved.
//

import UIKit

class SecDiagnosis_TableViewController: UITableViewController {
    
    var diagnosis = ["Certain infectious and parasitic diseases (A00-B99)", "Neoplasms (C00-D49)", "Diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism (D50-D89)", " Endocrine, nutritional and metabolic diseases (E00-E89)", "Mental, Behavioral and Neurodevelopmental disorders (F01-F99)", "Diseases of the nervous system  (G00-G99)", "Diseases of the eye and adnexa (H00-H59)", "Diseases of the ear and mastoid process (H60-H95)", "Diseases of the circulatory system (I00-I99)", "Diseases of the respiratory system (J00-J99)", "Diseases of the digestive system (K00-K95)", "Diseases of the skin and subcutaneous tissue (L00-L99)", "Diseases of the musculoskeletal system and connective tissue", "Diseases of the genitourinary system", " Pregnancy, childbirth and the puerperium (O00-O9A)", "Certain conditions originating in the perinatal period (P00-P96)", "Congenital malformations, deformations and chromosomal abnormalities (Q00-Q99)", "Symptoms, signs and abnormal clinical and laboratory findings, not elsewhere classified (R00-R99)", "Injury, poisoning and certain other consequences of external causes (S00-T88)", "External causes of morbidity (V00-Y99)", "Factors influencing health status and contact with health services (Z00-Z99)"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.tableView.allowsMultipleSelection = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return diagnosis.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        
        cell.textLabel?.text = diagnosis[indexPath.row]
        return cell
    }

    /*
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
     
     // Configure the cell...
     
     return cell
     }
     */
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
