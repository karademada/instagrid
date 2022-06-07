//
//  ViewController.swift
//  Instagrid
//
//  Created by Christophe Lazantsy on 03/06/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectedIcon: UIImageView!
    
    @IBOutlet weak var selectedIcon2: UIImageView!
    
    @IBOutlet weak var selectedIcon3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedIcon.isHidden = false
        selectedIcon2.isHidden = true
        selectedIcon3.isHidden = true
    }
    
    func allHide(){
        selectedIcon.isHidden = true
        selectedIcon2.isHidden = true
        selectedIcon3.isHidden = true
    }
    
    @IBAction func selectHandler(_ sender: Any) {
        allHide()
        selectedIcon.isHidden = false
    }
    
    @IBAction func selectHandler2() {
        allHide()
        selectedIcon2.isHidden = false
    }
    @IBAction func selectHandler3() {
        allHide()
        selectedIcon3.isHidden = false
    }
}

