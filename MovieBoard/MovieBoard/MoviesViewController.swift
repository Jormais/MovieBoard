//
//  MovieViewController.swift
//  MovieBoard
//
//  Created by Jonay Brito Hernández on 27/2/21.
//

import UIKit

class MovieViewController : UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating {
    
    var array : [String] = ["Cellda1","Cellda2","Cellda3"]
    @IBOutlet var movieTable : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.movieTable.delegate = self
        self.movieTable.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "toDetail", let indexPath = movieTable.indexPathForSelectedRow, let detailController = segue.destination as? MovieDetailViewController
        else {return}
        
        detailController.titleCell = array[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) 
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
}
