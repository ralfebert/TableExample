//
//  FruitsTableViewController.swift
//  TableExample
//
//  Created by Ralf Ebert on 27.11.17.
//  Copyright © 2017 Example. All rights reserved.
//

import UIKit

class FruitTableViewCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var fruitImageView: UIImageView!
}

class FruitsTableViewController: UITableViewController {

    var fruits = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry", "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit", "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango", "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach", "Pear", "Pineapple", "Raspberry", "Strawberry"]

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as! FruitTableViewCell

        let fruitName = fruits[indexPath.row]
        cell.label?.text = fruitName
        cell.fruitImageView?.image = UIImage(named: fruitName)
        return cell
    }

}
