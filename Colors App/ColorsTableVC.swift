//
//  ColorsTableVC.swift
//  Colors App
//
//  Created by Amr El-Fiqi on 28/08/2024.
//

import UIKit

class ColorsTableVC: UIViewController {

    
    // MARK: - Functions
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tempButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
    }
    

}
