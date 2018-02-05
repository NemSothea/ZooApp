//
//  ViewController.swift
//  ZooApp
//
//  Created by SotheaNem on 1/30/18.
//  Copyright © 2018 Sothea. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    //DataAnimals
    var listAnimals = [Animals]()
    var listNotKillerAnimals = [Animals]()
    var titleAnimalTypes = ["Killer Animals","Formal Animals"]
    
    @IBOutlet weak var tableViewAnimals: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateAnimal()
        
        tableViewAnimals.delegate = self
        tableViewAnimals.dataSource = self
    }
    //GenerateAnimal
    func generateAnimal() {
        listAnimals.append(Animals.init(name: "white_tiger", des: "white tiger", image: "white_tiger"))
        listAnimals.append(Animals.init(name: "white_tiger", des: "white tiger", image: "white_tiger"))
        listNotKillerAnimals.append(Animals.init(name: "zebra", des: "zebra", image: "zebra"))
        listNotKillerAnimals.append(Animals.init(name: "zebra", des: "zebra", image: "zebra"))
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return titleAnimalTypes[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return listAnimals.count
        }else {
            return listNotKillerAnimals.count
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
          print(listAnimals[indexPath.row].name!)
        }else {
            print(listNotKillerAnimals[indexPath.row].name!)
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewAnimals.dequeueReusableCell(withIdentifier: "cellAnimals", for: indexPath) as! AnimalsCell
        if indexPath.section == 0 {
            cell.setAnimal(animal: listAnimals[indexPath.row])
        }else {
            cell.setAnimal(animal: listNotKillerAnimals[indexPath.row])
        }

        return cell
    }

}

