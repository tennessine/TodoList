//
//  CompleteViewController.swift
//  TodoList
//
//  Created by gekongfei on 2019/8/31.
//  Copyright © 2019 gekongfei. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var toDo: ToDo = ToDo()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = toDo.name
    }

    @IBAction func completeTapped(_ sender: Any) {
        
    }
}
