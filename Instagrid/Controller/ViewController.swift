//
//  ViewController.swift
//  Instagrid
//
//  Created by Christophe Lazantsy on 03/06/2022.
//

import UIKit

class ViewController: UIViewController, ImagePickerDelegate, UIActivityItemSource {
    func activityViewControllerPlaceholderItem(_ activityViewController: UIActivityViewController) -> Any {
        return "The eagle is in the poke"
    }
    
    func activityViewController(_ activityViewController: UIActivityViewController, itemForActivityType activityType: UIActivity.ActivityType?) -> Any? {
        let bounds = UIScreen.main.bounds
            UIGraphicsBeginImageContextWithOptions(bounds.size, true, 0.0)
            self.view.drawHierarchy(in: bounds, afterScreenUpdates: false)
            let img = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            let activityViewController = UIActivityViewController(activityItems: [img!], applicationActivities: nil)
            return self.present(activityViewController, animated: true, completion: nil)
    }
    
    func didSelect(image: UIImage?) {
        self.imageView.image = image
    }
    
    @IBOutlet weak var But1: UIButton!
    @IBOutlet weak var But2: UIButton!
    
    @IBOutlet weak var But3: UIButton!
    @IBOutlet weak var But4: UIButton!
    
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
    @IBOutlet weak var Image3: UIImageView!
    
    @IBOutlet weak var Image4: UIImageView!
    @IBOutlet weak var imgPlus1: UIImageView!
    @IBOutlet weak var imgPlus2: UIImageView!
    @IBOutlet weak var imgPlus3: UIImageView!
    @IBOutlet weak var imgPlus4: UIImageView!
    
    var imagePicker: ImagePicker!
    @IBOutlet var swipeGesture: UISwipeGestureRecognizer!
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        self.swipeGesture.direction = UIDevice.current.orientation == .portrait ? .up : .left
    }
    
    @IBAction func gestureReco(_ sender: Any) {
        let items = [self]
        let ac = UIActivityViewController(activityItems: items, applicationActivities: nil)
        present(ac, animated: true)
    }
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
    @IBAction func shareButton(_ sender: UIButton) {
        let items = [self]
        let ac = UIActivityViewController(activityItems: items, applicationActivities: nil)
        present(ac, animated: true)
    }
    @IBAction func showImagePick1(_ sender: UIButton) {
        print(sender.tag)
        self.imagePicker.present(from: sender)
        
        switch sender {
            case But1 :
                print("But1")
                self.imageView = Image1
                imgPlus1.isHidden = true
                Image1.contentMode = .scaleAspectFill
                layout1.clipsToBounds = false
            case But2 :
                print("But2")
                self.imageView = Image2
                imgPlus2.isHidden = true
                Image2.contentMode = .scaleAspectFill
                layout2.clipsToBounds = false
            case But3 :
                print("But3")
                self.imageView = Image3
                imgPlus3.isHidden = true
                Image3.contentMode = .scaleAspectFill
                layout3.clipsToBounds = false
            case But4 :
                print("But4")
                self.imageView = Image4
                imgPlus4.isHidden = true
                Image4.contentMode = .scaleAspectFill
                layout4.clipsToBounds = false
            default:break
        }
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

