//
//  POIsTableViewController.swift
//  GrailDiary
//
//  Created by William Schwindt on 5/2/20.
//  Copyright © 2020 William Schwindt. All rights reserved.
//

import UIKit

class POIsTableViewController: UITableViewController {
    
    var pois: [POI] = [POI(location: "bend", country: "US", clues: ["clue 1", "clue 2", "clue 3"])]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pois.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "POICell", for: indexPath) as? POITableViewCell else { fatalError("cell id wrong or cell is not of type POITableViewCell") }
        
        let poi = pois[indexPath.row]
        
        cell.locationLabel.text = poi.location
        cell.countryLabel.text = poi.country
        cell.numberOfCluesLabel.text = "\(poi.clues.count) clues"

        // Configure the cell...

        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
