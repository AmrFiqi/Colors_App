//
//  ColorsDetailVC.swift
//  Colors App
//
//  Created by Amr El-Fiqi on 28/08/2024.
//

import UIKit

class ColorsDetailVC: UIViewController {
    
    // MARK: - Variables
    
    var color: UIColor?
    
    // MARK: - Functions

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
        // Do any additional setup after loading the view.
    }

}
