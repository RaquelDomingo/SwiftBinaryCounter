//
//  BinaryTableViewCell.swift
//  Binary Counter
//
//  Created by Raquel Domingo on 9/18/17.
//  Copyright © 2017 Raquel Domingo. All rights reserved.
//

import UIKit

protocol BinaryTableViewCellDelegate: class{
    func valueChangedBy(value:Int)
}

class BinaryTableViewCell: UITableViewCell {

    @IBOutlet weak var valueLabel: UILabel!
    
    weak var delegate: BinaryTableViewCellDelegate?
    
    @IBAction func valueButtonPressed(_ sender: UIButton) {
        var value = Int(valueLabel!.text!)
        
        if sender.titleLabel!.text == "-"{
            value = -value!
                
            }
        delegate?.valueChangedBy(value: value!)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
