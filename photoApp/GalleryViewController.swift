//
//  GalleryViewController.swift
//  photoApp
//
//  Created by Vivian Phung on 6/21/18.
//  Copyright © 2018 Vivian Phung. All rights reserved.
//

import UIKit

class GalleryViewController: UIViewController {

    var imageViewGallery: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

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
        view.addSubview(imageViewGallery)
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        // constraints
        NSLayoutConstraint.activate([
            imageViewGallery.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageViewGallery.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageViewGallery.topAnchor.constraint(equalTo: view.topAnchor),
            imageViewGallery.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            ])
        
        getImage(imageName: "imageName.png")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
