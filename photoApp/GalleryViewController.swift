//
//  GalleryViewController.swift
//  photoApp
//
//  Created by Vivian Phung on 6/21/18.
//  Copyright © 2018 Vivian Phung. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {

    @IBOutlet weak var imageViewGallery: UIImageView!
    func getImage(imageName: String){
        let fileManager = FileManager.default
        let imagePath = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString).appendingPathComponent(imageName)

        if fileManager.fileExists(atPath: imagePath) {
            let image = UIImage(contentsOfFile: imagePath)
            let newImage = UIImage(cgImage: (image?.cgImage!)!, scale: (image?.scale)!, orientation: .right)
            imageViewGallery.image = newImage
        } else {
            print("Oh no! No Image!")
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        getImage(imageName: "imageName.png")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
