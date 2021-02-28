//
//  MovieTableViewCell.swift
//  MovieBoard
//
//  Created by Jonay Brito Hernández on 28/2/21.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet var title: UILabel!
    @IBOutlet var subtitle: UILabel!
    @IBOutlet var imgMovie: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
