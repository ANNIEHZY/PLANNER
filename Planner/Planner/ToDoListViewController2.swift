//
//  ToDoListViewController2.swift
//  Planner
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 ANNIE. All rights reserved.
//

import UIKit

class ToDoListViewController2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var DailyEventTableView: UITableView!
    @IBOutlet weak var tableView: UITableView!
    
    
    let feedbackGenerator = UINotificationFeedbackGenerator()
    var row: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ DailyEventTableView: UITableView, numberOfRowsInSection section:
        Int) -> Int {
        return 20
    }
    
    func tableView(_ DailyEventTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = ("\(indexPath.row + 1)")
        cell.textLabel?.textColor = UIColor.black
        cell.contentView.backgroundColor = UIColor.white
        return cell
    }
    
    func tableView(_ DailyEventTableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row + 1) hahaha")
        row = indexPath.row
      performSegue(withIdentifier: "nice", sender: self)
//      performSegue(withIdentifier: "good", sender: self)
    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section:
//        Int) -> Int {
//        return 20
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell()
//        cell.textLabel?.text = ("\(indexPath.row + 1)")
//        cell.textLabel?.textColor = UIColor.black
//        cell.contentView.backgroundColor = UIColor.white
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("\(indexPath.row) hahaha")
//        row = indexPath.row
//    }
    
    
    
    

  
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
