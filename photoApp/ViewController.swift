//
//  ViewController.swift
//  photoApp
//
//  Created by Vivian Phung on 6/21/18.
//  Copyright © 2018 Vivian Phung. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate,
UIImagePickerControllerDelegate {
    
    var imagePickerController: UIImagePickerController!
    @IBOutlet weak var imageViewOne: UIImageView!
    @IBAction func takePhotoAction(_ sender: Any) {
        print("photo starting")
        imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .camera
        print("photo starting")
        present(imagePickerController, animated: true, completion: nil)
        print("photo starting")
    }
    
    @IBAction func savePhotoAction(_ sender: Any) {
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imagePickerController.dismiss(animated: true, completion: nil)
        imageViewOne.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

