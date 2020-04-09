//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Clean Mac on 4/7/20.
//  Copyright © 2020 LambdaStudent. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
    
    var colors: [Color] = [
        Color(colorName: "Red", color: .red),
        Color(colorName: "Orange", color: .orange),
        Color(colorName: "Yellow", color: .yellow),
        Color(colorName: "Green", color: .green),
        Color(colorName: "Blue", color: .blue)

    ]

        
        
        
        // MARK: - Table view data source
        
        
        
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return colors.count
        }
        
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
            
            let color = colors[indexPath.row]
            cell.textLabel?.text = color.colorName
            cell.backgroundColor = color.color
            return cell
            
        
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if segue.identifier == "ToDetailSegue" {
                if let detailVC = segue.destination as? ColorDetailViewController,
                    let indexPath = self.tableView.indexPathForSelectedRow {
                    detailVC.cellColor = colors[indexPath.row]
                }
            }
        }
    }

