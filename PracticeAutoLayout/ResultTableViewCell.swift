//
//  ResultTableViewCell.swift
//  PracticeAutoLayout
//
//  Created by user on 2020/07/05.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

class ResultTableViewCell: UITableViewCell {

    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var cellNo: UILabel!
    let vc = ViewController()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func deleteCell(_ sender: Any) {

        cellLabel.backgroundColor = .red
        //このセルの情報とセル自体を削除するというのを記述すれば良い?
        print(vc.titleList)
        vc.titleList.removeAll()
        //tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        print(vc.titleList)


    }
}
