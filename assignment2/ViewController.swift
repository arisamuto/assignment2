//
//  ViewController.swift
//  assignment2
//
//  Created by Arisa Muto on 2019/05/30.
//  Copyright © 2019 Arisa Muto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // ピーナッツを表示する画像
    @IBOutlet var peanutsImageView: UIImageView!
    @IBOutlet var label: UILabel!
    
    //変数を宣言
    var position: Int = 0
    var characters: [String] = ["Charlie", "Snoopy", "Woodstock"]
    var imageData: [String] = ["charlie.png", "snoopy.png", "woodstock.png"]
    
    var data: [Peanuts] = [Peanuts(name: "Charlie", imageName: "charlie.png"), Peanuts(name: "Snoopy", imageName: "snoopy.png"), Peanuts(name: "Woodstock", imageName: "woodstock.png") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func back () {
        position += 1
        if position > 2 {
            position = 0
        }
        label.text = characters[position]
        peanutsImageView.image = UIImage(named: imageData[position])
    }
    @IBAction func next () {
        position -= 1
        if position < 0 {
            position = 2
        }
        label.text = characters[position]
        peanutsImageView.image = UIImage(named: imageData[position])
    }
}

class Peanuts {
    
    var name: String
    var imageName: String
    
    init(name: String, imageName: String) {
        
        self.name = name
        self.imageName = imageName
    }

}
