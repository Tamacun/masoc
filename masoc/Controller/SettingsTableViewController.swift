//
//  SettingsTableViewController.swift
//  masoc
//
//  Created by Andrew Li on 3/5/18.
//  Copyright © 2018 Li. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    var settings = [String]()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        loadSettings()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return settings.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "SettingsCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? SettingsTableViewCell else {
            fatalError("The dequeued cell is not an instance of SettingsTableViewCell")
        }
        let setting = settings[indexPath.row]
        
        // Configure the cell...
            cell.settingsLabel.text = setting
        
        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    

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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("section: \(indexPath.section)")
        print("row: \(indexPath.row)")
        
        switch indexPath.row {
        case 0:
            let alert = UIAlertController(title: "Reset Level?", message: "Do you want to reset Level to 0?", preferredStyle: .alert)
            let resetLevel = UIAlertAction(title: "Reset", style: .default) { (alert: UIAlertAction!) -> Void in
                UserDefaults.standard.set(1, forKey: "CurrentLevel")
            }
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (alert: UIAlertAction!) -> Void in
                //print("You pressed Cancel")
                }
            
            alert.addAction(resetLevel)
            alert.addAction(cancelAction)
            present(alert, animated: true, completion:nil)
            
        case 1:
            let alert = UIAlertController(title: "Reset Scores?", message: "Do you want to reset High Scores to 0?", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (alert: UIAlertAction!) -> Void in
                //print("You pressed Cancel")
            }
            
            alert.addAction(cancelAction)
            present(alert, animated: true, completion:nil)
        default:
            print("HI baby")
        }
    }
    
    func loadSettings() {
        let settings1 = "Reset Level"
        let settings2 = "Reset High Scores"
        
        settings += [settings1, settings2]
    }

}
