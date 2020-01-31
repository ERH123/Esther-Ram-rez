//
//  TableViewController.swift
//  NeoMuralismo
//
//  Created by CDAM08 on 29/01/20.
//  Copyright © 2020 CDAM08. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var pictures = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hola mundo")
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        for item in items {
             print(item)
            if item.hasPrefix("nh0")
            {
                pictures.append(item)
            }
        }
        print (pictures)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return pictures.count
       }
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
           cell.textLabel?.text = pictures[indexPath.row]
           return cell
       }
       override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           
        
           if let vc = storyboard?.instantiateViewController(identifier: "Detail") as? DetailViewController
           {
               vc.selectedImage = pictures[indexPath.row]
               navigationController?.pushViewController(vc, animated: true)
           }
       }
}
    
    
    
