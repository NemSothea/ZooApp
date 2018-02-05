//
//  AnimalsCell.swift
//  ZooApp
//
//  Created by SotheaNem on 1/30/18.
//  Copyright © 2018 Sothea. All rights reserved.
//

import UIKit

class AnimalsCell: UITableViewCell {
    //@Outlet
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var lblAnimalName: UILabel!
    @IBOutlet weak var lblAnimalDescription: UILabel!
    
    func setAnimal(animal:Animals) {
        self.lblAnimalName.text = animal.name
        self.lblAnimalDescription.text = animal.des
        self.animalImage.image = UIImage(named:animal.image!)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }



}
