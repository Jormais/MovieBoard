//
//  MovieDetailViewController.swift
//  MovieBoard
//
//  Created by Jonay Brito Hernández on 28/2/21.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    @IBOutlet var titleMovie: UILabel!
    
    var titleCell : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleMovie.text = titleCell
    }
    
    @IBAction func toBackView() {
        dismiss(animated: true, completion: nil)
    }
}
