//
//  NamesViewController.swift
//  tany
//
//  Created by fathy  on 7/10/19.
//  Copyright © 2019 fathy . All rights reserved.
//

import UIKit
protocol TransfairDateDelaget {
    func DataBack(name: String)
}

class NamesViewController: UIViewController {
    
    @IBOutlet weak var nameBack2: UILabel!
    
    var delaget: TransfairDateDelaget?
    
    @IBOutlet weak var textFieldBack: UITextField!
    
    var nameDate: String?
    
    @IBOutlet weak var tabolView: UITableView!
    
    let imags: [UIImage] = [#imageLiteral(resourceName: "s"),#imageLiteral(resourceName: "s"),#imageLiteral(resourceName: "v")]
    
    let names = ["ahmed" , "fathy" , "hassan"]

    override func viewDidLoad() {
        super.viewDidLoad()
nameBack2.text = nameDate
        tabolView.delegate = self
        tabolView.dataSource = self
    }
    

    @IBAction func SaveDate(_ sender: Any) {
        delaget?.DataBack(name: textFieldBack.text!)
        
        dismiss(animated: true, completion: nil)
    }
    

}


extension NamesViewController : UITableViewDelegate {
    
}

extension NamesViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameTableViewCell", for: indexPath) as?NameTableViewCell
        
        cell?.nameLabelTabol.text = names[indexPath.row]
        cell?.imagView.image = imags[indexPath.row]
        
        return cell!
        
        

}

}
