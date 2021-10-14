//
//  ViewController.swift
//  firebaseTesting
//
//  Created by Александр on 14.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showFulgrimButtonPressed(_ sender: Any) {
        APIManager.shared.getPost(collection: "warriors", docName:  "emperorsChildren", completion: {doc in
            guard doc != nil else { return }
            self.nameLabel.text = doc?.field1
            self.surnameLabel.text = doc?.field2
        })
        APIManager.shared.getImage(picName: "Fulgrim", completion: { pic in
            self.picture.image = pic
        })
    }
    
    @IBAction func showRogalDornButtonPressed(_ sender: Any) {
        APIManager.shared.getPost(collection: "warriors", docName:  "imperialFists", completion: {doc in
            guard doc != nil else { return }
            self.nameLabel.text = doc?.field1
            self.surnameLabel.text = doc?.field2
        })
        APIManager.shared.getImage(picName: "Rogal", completion: { pic in
            self.picture.image = pic
        })
    }
    
    @IBAction func showLemanRussButtonPressed(_ sender: Any) {
        APIManager.shared.getPost(collection: "warriors", docName:  "spaceWolves", completion: {doc in
            guard doc != nil else { return }
            self.nameLabel.text = doc?.field1
            self.surnameLabel.text = doc?.field2
        })
        APIManager.shared.getImage(picName: "Leman", completion: { pic in
            self.picture.image = pic
        })
    }
    

}

