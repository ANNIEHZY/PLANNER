//
//  ToDoListTableViewCell.swift
//  Planner
//
//  Created by apple on 2018/7/16.
//  Copyright © 2018年 ANNIE. All rights reserved.
//

import UIKit

class ToDoListTableViewCell: UITableViewCell {
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func tableView(_ tableView: UIImageView, numberOfRowsInSection section: Int) -> Int {
        return 20
        
    }
    
}
