//
//  ColorsTableVC.swift
//  Colors App
//
//  Created by Amr El-Fiqi on 28/08/2024.
//

import UIKit

class ColorsTableVC: UIViewController {
    
    // MARK: - Variables
    
    var colors: [UIColor] = []
    
    
    // MARK: - Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func createRandomColors() {
        for _ in 0..<50 {
            colors.append(createRandomColor())
        }
    }
    
    func createRandomColor() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1.0), green: CGFloat.random(in: 0...1.0), blue: CGFloat.random(in: 0...1.0), alpha: 0)
        return randomColor
    }
    
}

// MARK: - Extension

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
    }
}
