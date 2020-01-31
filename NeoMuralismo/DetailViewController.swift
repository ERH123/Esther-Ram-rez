//
//  DetailViewController.swift
//  NeoMuralismo
//
//  Created by CDAM08 on 29/01/20.
//  Copyright © 2020 CDAM08. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var selectedImage:String?
    @IBOutlet weak var ImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let imageToLoad = selectedImage {
            ImageView.image = UIImage(named: imageToLoad)
            title = imageToLoad
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
