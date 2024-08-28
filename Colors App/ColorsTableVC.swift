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

        createRandomColors()
    }
    
    func createRandomColors() {
        for _ in 0..<50 {
            colors.append(UIColor.random())
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let targetVC = segue.destination as! ColorsDetailVC
        targetVC.color = sender as? UIColor
    }
}

// MARK: - Extension

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else { return UITableViewCell() }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorsDetailVC", sender: color)
    }
}
