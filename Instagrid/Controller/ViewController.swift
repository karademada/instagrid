//
//  ViewController.swift
//  Instagrid
//
//  Created by Christophe Lazantsy on 03/06/2022.
//

import UIKit

class ViewController: UIViewController, ImagePickerDelegate, UIActivityItemSource {
    
    var imagePicker: ImagePicker!
    @IBOutlet var swipeGesture: UISwipeGestureRecognizer!
    
    @IBOutlet weak var uiViewForScreen: UIView!
    @IBOutlet weak var swipeLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var but1: UIButton!
    @IBOutlet weak var but2: UIButton!
    @IBOutlet weak var but3: UIButton!
    @IBOutlet weak var but4: UIButton!
        
    @IBOutlet weak var selectedIcon: UIImageView!
    @IBOutlet weak var selectedIcon2: UIImageView!
    @IBOutlet weak var selectedIcon3: UIImageView!
    
    @IBOutlet weak var layout1: UIView!
    @IBOutlet weak var layout2: UIView!
    @IBOutlet weak var layout3: UIView!
    @IBOutlet weak var layout4: UIView!
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    @IBOutlet weak var imgPlus1: UIImageView!
    @IBOutlet weak var imgPlus2: UIImageView!
    @IBOutlet weak var imgPlus3: UIImageView!
    @IBOutlet weak var imgPlus4: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeLayoutButtonHandler1()
        hideTextButtons()
        self.imagePicker = ImagePicker(presentationController: self, delegate: self)
        self.swipeGesture.direction = .up
        self.swipeLabel.text = UIDevice.current.orientation == .portrait ? "Swipe to share" : "Swipe left to share"
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
    
    func hideTextButtons(){
        but1.titleLabel?.isHidden=true;
        but2.titleLabel?.isHidden=true;
        but3.titleLabel?.isHidden=true;
        but4.titleLabel?.isHidden=true;
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        self.swipeGesture.direction = UIDevice.current.orientation == .portrait ? .up : .left
        self.swipeLabel.text = UIDevice.current.orientation == .portrait ? "Swipe to share" : "Swipe left to share"
    }
    
    func activityViewControllerPlaceholderItem(_ activityViewController: UIActivityViewController) -> Any {
        return "Share a picture you build"
    }
    
    func activityViewController(_ activityViewController: UIActivityViewController, itemForActivityType activityType: UIActivity.ActivityType?) -> Any? {
        let bounds = uiViewForScreen.bounds
        UIGraphicsBeginImageContextWithOptions(bounds.size, false, UIScreen.main.scale)
        uiViewForScreen.drawHierarchy(in: bounds, afterScreenUpdates: false)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        let activityViewController = UIActivityViewController(activityItems: [img!], applicationActivities: nil)
        return self.present(activityViewController, animated: true, completion: nil)
    }
    
    func didSelect(image: UIImage?) {
        self.imageView.image = image
    }
    
    @IBAction func gestureReco(_ sender: Any) {
        let items = [self]
        let ac = UIActivityViewController(activityItems: items, applicationActivities: nil)
        present(ac, animated: true)
    }

    @IBAction func showImagePick1(_ sender: UIButton) {
        self.imagePicker.present(from: sender)
        
        switch sender {
        case but1 :
            self.imageView = image1
            imgPlus1.isHidden = true
            image1.contentMode = .scaleAspectFill
            layout1.clipsToBounds = false
        case but2 :
            self.imageView = image2
            imgPlus2.isHidden = true
            image2.contentMode = .scaleAspectFill
            layout2.clipsToBounds = false
        case but3 :
            self.imageView = image3
            imgPlus3.isHidden = true
            image3.contentMode = .scaleAspectFill
            layout3.clipsToBounds = false
        case but4 :
            self.imageView = image4
            imgPlus4.isHidden = true
            image4.contentMode = .scaleAspectFill
            layout4.clipsToBounds = false
        default:
            break
        }
    }
    
    
    @IBAction func changeLayoutButtonHandler1() {
        allHideButtons()
        allShowLayouts()
        selectedIcon.isHidden = false
        layout1.isHidden = true
    }
    
    @IBAction func changeLayoutButtonHandler2() {
        allHideButtons()
        allShowLayouts()
        selectedIcon2.isHidden = false
        layout3.isHidden = true
    }
    @IBAction func changeLayoutButtonHandler3() {
        allHideButtons()
        allShowLayouts()
        selectedIcon3.isHidden = false
        
    }
}

