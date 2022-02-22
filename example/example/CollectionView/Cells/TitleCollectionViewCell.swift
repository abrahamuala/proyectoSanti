//
//  TitleCollectionViewCell.swift
//  example
//
//  Created by Andrés Abraham Bonilla Gómex on 22/02/22.
//

import UIKit

class TitleCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        lblTitle.textColor = .blue
    }
    
    func update(text: String) {
        lblTitle.text = text
    }
}
