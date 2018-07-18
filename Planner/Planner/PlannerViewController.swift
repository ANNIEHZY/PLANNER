//
//  PlannerViewController.swift
//  Planner
//
//  Created by apple on 2018/7/13.
//  Copyright © 2018年 ANNIE. All rights reserved.
//

import UIKit

class PlannerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var AMTableView: UITableView!
    @IBOutlet weak var PMTableView: UITableView!
    
 
//Making the clock________________________________________________
    override func viewDidLoad() {
        super.viewDidLoad()

        Timer.scheduledTimer(withTimeInterval: 1,  repeats: true){(_) in
            self.updateCurrentTime()
            self.updateCurrentdate()
        }
        
    }
    
    
    func updateCurrentTime() {
        let date = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .medium
        
        let dateText: String = dateFormatter.string(from: date)
        
        timeLabel.text = dateText
    }
    
    
    func updateCurrentdate() {
        let date = Date()
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .none
        
        let dateText: String = dateFormatter.string(from: date)
        
        dateLabel.text = dateText
    }
    
//Stating the table view________________________________________
    
    let feedbackGenerator = UINotificationFeedbackGenerator()
    var row: Int = 0
    
    func tableView(_ TableView: UITableView, numberOfRowsInSection section:
        Int) -> Int {
        return 20
    }
    
    func tableView(_ TableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = ("\(indexPath.row + 1)")
        cell.textLabel?.textColor = UIColor.black
        cell.contentView.backgroundColor = UIColor.white
        return cell
    }
    
    func tableView(_ TableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row) hahaha")
        row = indexPath.row
        
    }
    
    
    
    
    
    
   
//    
//    @IBAction func sliderAction(_ sender: UISlider) {
//        print(sender.value)
//    
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
