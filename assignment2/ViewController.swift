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
    var data: [String] = ["charlie", "snoopy", "woodstock"]
    var imageData: [String] = ["charlie.png", "snoopy.png", "woodstock.png"]
    
    class Peanuts {
        
        var name: String
        var imageName: String
        
        init(name: String, imageName: String) {
            
            self.name = name
            self.imageName = imageName
        }
        
        var data: [Peanuts] = [Peanuts(name: "charlie", imageName: "charlie.png"), Peanuts(name: "snoopy", imageName: "snoopy.png"), Peanuts(name: "woodstock", imageName: "woodstock.png") ]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func back () {
        position += 1
        if position > 2 {
            position = 0
        }
        label.text = data[position]
        peanutsImageView.image = UIImage(named: imageData[position])
    }
    @IBAction func next () {
        position -= 1
        if position < 0 {
            position = 2
        }
        label.text = data[position]
        peanutsImageView.image = UIImage(named: imageData[position])
    }
}
