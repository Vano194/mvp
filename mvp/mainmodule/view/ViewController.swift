//
//  ViewController.swift
//  mvp
//
//  Created by Иван Галиченко on 22.06.2024.
//

import UIKit

class MainViewController: UIViewController {
    // IBOUTLET
    @IBOutlet weak var greetinglabel : UILabel!
    
    var presenter: MainViewPresenterProtocol!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // IBAction
    @IBAction func didTapButtonAction (_ sender: Any) {
        self.presenter.showGreeting()
    }

}

extension MainViewController: MainViewProtocol {
    func setGreeting(greeting: String) {
        self.greetinglabel.text = greeting
    }
}
