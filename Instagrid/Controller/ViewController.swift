//
//  ViewController.swift
//  Instagrid
//
//  Created by Christophe Lazantsy on 03/06/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectedIcon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        selectedIcon.isHidden = true
    }
    
    @IBAction func selectHandler(_ sender: Any) {
        print("selectHandler")
        selectedIcon.isHidden = !selectedIcon.isHidden
    }
    
}

