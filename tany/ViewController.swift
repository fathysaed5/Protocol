//
//  ViewController.swift
//  tany
//
//  Created by fathy  on 7/10/19.
//  Copyright © 2019 fathy . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var
    
    
    
    nameGoDateTextField: UITextField!
    @IBOutlet weak var nameBackLabel: UILabel!
    @IBOutlet weak var ClickButtom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Click(_ sender: Any) {
        let homePage = storyboard?.instantiateViewController(withIdentifier: "NamesViewController") as?NamesViewController
    homePage?.nameDate = nameGoDateTextField.text
        homePage?.delaget = self
        present(homePage!, animated: true, completion: nil)
    }
    
}

extension ViewController:TransfairDateDelaget{
    func DataBack(name: String) {
        nameBackLabel.text = name
}

}
