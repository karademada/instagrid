//
//  ViewController.swift
//  Instagrid
//
//  Created by Christophe Lazantsy on 03/06/2022.
//

import UIKit

class ViewController: UIViewController, ImagePickerDelegate {
    func didSelect(image: UIImage?) {
        self.Image1.image = image
    }
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var selectedIcon: UIImageView!
    @IBOutlet weak var selectedIcon2: UIImageView!
    @IBOutlet weak var selectedIcon3: UIImageView!
    
    @IBOutlet weak var layout1: UIView!
    @IBOutlet weak var layout2: UIView!
    @IBOutlet weak var layout3: UIView!
    @IBOutlet weak var layout4: UIView!

    @IBOutlet weak var Button1: UIButton!
    
    
    @IBOutlet weak var Image1: UIImageView!
    @IBOutlet weak var Image2: UIImageView!
    
    @IBOutlet weak var imgPlus1: UIImageView!
    @IBOutlet weak var imgPlus2: UIImageView!
    
    var imagePicker: ImagePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectHandler()
        self.imagePicker = ImagePicker(presentationController: self, delegate: self)
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
    @IBAction func showImagePick1(_ sender: UIButton) {
        print("showImagePick1")
        self.imagePicker.present(from: sender)
        imgPlus1.isHidden = true
        Image1.contentMode = .scaleAspectFill
        layout1.clipsToBounds = false
    }
    
    @IBAction func showImagePick2(_ sender: UIButton) {
        print("showImagePick2")
        self.imagePicker.present(from: sender)
        imgPlus2.isHidden = true
        Image2.contentMode = .scaleAspectFill
        layout2.clipsToBounds = false
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

