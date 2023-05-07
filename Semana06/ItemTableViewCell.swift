//
//  ItemTableViewCell.swift
//  Semana06
//
//  Created by Alumno on 5/05/23.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

        
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var petImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
