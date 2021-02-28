//
//  MovieViewController.swift
//  MovieBoard
//
//  Created by Jonay Brito Hernández on 27/2/21.
//

import UIKit

class MovieViewController : UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating {
    
    var films : [String] = ["Cellda1","Cellda2","Cellda3"]
    var filteredFilms : [String] = []
    
    var isSearchBarEmpty: Bool {
      return searchController.searchBar.text?.isEmpty ?? true
    }
    var isFiltering: Bool {
      return searchController.isActive && !isSearchBarEmpty
    }
    let searchController = UISearchController(searchResultsController: nil)
    
    @IBOutlet var movieTable : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.movieTable.delegate = self
        self.movieTable.dataSource = self
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Films"
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "toDetail", let indexPath = movieTable.indexPathForSelectedRow, let detailController = segue.destination as? MovieDetailViewController
        else {return}
        
        detailController.titleCell = films[indexPath.row]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering{
            return filteredFilms.count
        }
        return films.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if isFiltering{
            cell.textLabel?.text = filteredFilms[indexPath.row]
            return cell
        }
        cell.textLabel?.text = films[indexPath.row]
        return cell
    }
    
    func updateSearchResults(for searchController: UISearchController) {
           let searchBar = searchController.searchBar
           filterForSearchText(searchBar.text!)
       }
    
    func filterForSearchText(_ searchText: String) { 
        filteredFilms = films.filter({ (film) -> Bool in
            return film.lowercased().contains(searchText.lowercased())
        })
        self.movieTable.reloadData()
    }
    
}
