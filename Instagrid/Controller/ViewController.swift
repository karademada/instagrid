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
    

    @IBOutlet weak var layout1: UIView!
    
    @IBOutlet weak var layout2: UIView!

    @IBOutlet weak var layout3: UIView!

    @IBOutlet weak var layout4: UIView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectHandler()
    }
    
    func allHideButtons(){
        selectedIcon.isHidden = true
        selectedIcon2.isHidden = true
        selectedIcon3.isHidden = true
    }
    
    func allShowLayouts(){
        layout1.isHidden = false
        layout2.isHidden = false
        layout3.isHidden = false
        layout4.isHidden = false
    }
    
    @IBAction func selectHandler() {
        allHideButtons()
        allShowLayouts()
        selectedIcon.isHidden = false
        layout1.isHidden = true
    }
    
    @IBAction func selectHandler2() {
        allHideButtons()
        allShowLayouts()
        selectedIcon2.isHidden = false
        layout3.isHidden = true
    }
    @IBAction func selectHandler3() {
        allHideButtons()
        allShowLayouts()
        selectedIcon3.isHidden = false

    }
}

