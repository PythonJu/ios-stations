//
//  FirstViewController.swift
//  ios-stations
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBAction func clickButton(_ sender: Any) {
        clickButton.backgroundColor = UIColor.randomColor
    }
    
    @IBOutlet weak var clickButton: UIButton!
    
    
    var books: [Book]?
    override func viewDidLoad() {
        super.viewDidLoad()
//        clickButton.backgroundColor = UIColor.randomColor
    }
}

extension FirstViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}

extension FirstViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}

