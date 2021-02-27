//
//  MovieViewController.swift
//  MovieBoard
//
//  Created by Jonay Brito Hernández on 27/2/21.
//

import UIKit


let appDelegate = UIApplication.shared.delegate as? AppDelegate

class MovieViewController : UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating {
    
    @IBOutlet var movieTable : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        <#code#>
    }
    
}
