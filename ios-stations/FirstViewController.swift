//
//  FirstViewController.swift
//  ios-stations
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var clickButton: UIButton!
    
    @IBAction func presentSecondViewController(_ sender: Any) {
//        clickButton.backgroundColor = UIColor.randomColor
        let moveToSecondVC = storyboard?.instantiateViewController(identifier: "SecondView") as! SecondViewController
        moveToSecondVC.receiveDataUrl = "https://techbowl.co.jp/"
        self.present(moveToSecondVC, animated: true, completion: nil)
    }
    
    var books: [Book]?
    override func viewDidLoad() {
        super.viewDidLoad()
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

