//
//  ViewController.swift
//  SimpleTable
//
//  Created by Blaine Beltran on 11/12/20.
//  Copyright © 2020 Blaine Beltran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var resturantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var restaurantImages = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    // Method used to inform the table view the total number of rows in a section.
    // Simply use the count method to get the number of items in the restaurantNames array.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resturantNames.count
    }
    
    // This method will be called every time a table row is displayed. By using the indexpath object,
    // we can get the current row (indexPath.row). Here we retirve the indexed item from the restaurantNames array,
    // and assign it to the text label (cell.textLabel?.text) for display. Also our textLabel is optional
    // The dequeueReusableCell method is used for retrieving a reuable table cell from the queue with the
    // specified cell indetifier. The datacell identifier is the one we defined earlier in Interface Builder
    
    // We want you reuse cells rather than creating a new cell fro each row to maximize memory. Creating a new cell for each
    // row would take too much memory and not scaleable. Rather than creating 1000 table cells, use 10 reuable ones. This
    // also improves performance of the table view.
    
    // How it works: When the cell is out of the view on the iPhone screen, it is returned to the queue for reuse
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        // Configure the cell...
        
        // Add Text to each cell
        cell.textLabel?.text = resturantNames[indexPath.row]
        
        // Add an image to each cell. The UIImage class lets you create images from files. You can pass the name
        // of the image (file extension is optional) and the class will load the image from the asset catalog.
        cell.imageView?.image = UIImage(named: restaurantImages[indexPath.row])
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Used to hide the status bar (remove comments from the below function to hide the status bar)
    
    //override var prefersStatusBarHidden: Bool {
       // return true
    //}

}

