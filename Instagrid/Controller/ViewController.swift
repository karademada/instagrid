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
    
    @IBOutlet weak var layout1: Layout1!
    
    @IBOutlet weak var layout2: Layout2!
    
    @IBOutlet weak var layout3: Layout3!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allHideButtons()
        allHideLayouts()
        layout1.isHidden = false
        selectedIcon.isHidden = false
    }
    
    func allHideButtons(){
        selectedIcon.isHidden = true
        selectedIcon2.isHidden = true
        selectedIcon3.isHidden = true
    }
    
    func allHideLayouts(){
        layout1.isHidden = true
        layout2.isHidden = true
        layout3.isHidden = true
    }
    
    @IBAction func selectHandler(_ sender: Any) {
        allHideButtons()
        allHideLayouts()
        selectedIcon.isHidden = false
        layout1.isHidden = false
    }
    
    @IBAction func selectHandler2() {
        allHideButtons()
        allHideLayouts()
        selectedIcon2.isHidden = false
        layout2.isHidden = false
    }
    @IBAction func selectHandler3() {
        allHideButtons()
        allHideLayouts()
        selectedIcon3.isHidden = false
        layout3.isHidden = false

    }
}

