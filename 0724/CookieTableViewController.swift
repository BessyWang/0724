//
//  CookieTableViewController.swift
//  0724
//
//  Created by Bessy Wang on 2018/7/26.
//  Copyright © 2018年 Bessy Wang. All rights reserved.
//

import UIKit

class CookieTableViewController: UITableViewController {
    @IBOutlet weak var cookieNum1: UILabel!
    
    @IBOutlet weak var cookieNum2: UILabel!
    @IBOutlet weak var cookieNum3: UILabel!
    @IBOutlet weak var cookieNum4: UILabel!
    @IBOutlet weak var cookiePrice1: UILabel!
    @IBOutlet weak var cookiePrice2: UILabel!
    @IBOutlet weak var cookiePrice3: UILabel!
    @IBOutlet weak var cookiePrice4: UILabel!
    @IBOutlet weak var cookieTotal: UILabel!
    var cookieCount1:Int=0
    var cookieCount2:Int=0
    var cookieCount3:Int = 0
    var cookieCount4:Int = 0
    var cookieValue1:Int = 0
    var cookieValue2:Int = 0
    var cookieValue3:Int = 0
    var cookieValue4:Int = 0
    @IBAction func cookieStepper1(_ sender: UIStepper) {
        cookieCount1 = Int(sender.value)
        cookieNum1.text = "\(cookieCount1)"
       let cookieValue1 = 1080 * cookieCount1
        cookiePrice1.text = "NT  " + "\(cookieValue1)"
        tolalPrice()
    }
    
    @IBAction func cookieCount2(_ sender: UIStepper) {
        cookieCount2 = Int(sender.value)
        cookieNum2.text = "\(cookieCount2)"
        let cookieValue2 = 680 * cookieCount2
        cookiePrice2.text = "NT  " + "\(cookieValue2)"
        tolalPrice()
            }
   
    @IBAction func cookieCount3(_ sender: UIStepper) {
        cookieCount3 = Int(sender.value)
        cookieNum3.text = "\(cookieCount3)"
        let cookieValue3 = 580 * cookieCount3
        cookiePrice3.text = "NT  " + "\(cookieValue3)"
        tolalPrice()
    }
    
    @IBAction func cookieCount4(_ sender: UIStepper) {
        cookieCount4 = Int(sender.value)
        cookieNum4.text = "\(cookieCount4)"
        let cookieValue4 = 480 * cookieCount4
        cookiePrice4.text = "NT  " + "\(cookieValue4)"
        tolalPrice()
    }
    func tolalPrice(){
    let total = 1080 * cookieCount1 + 680 * cookieCount2 + 580 * cookieCount3 + 480 * cookieCount4
        cookieTotal.text = "NT  " + "\(total)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

 

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
