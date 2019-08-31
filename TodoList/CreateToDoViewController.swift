//
//  CreateToDoViewController.swift
//  TodoList
//
//  Created by gekongfei on 2019/8/31.
//  Copyright © 2019 gekongfei. All rights reserved.
//

import UIKit

class CreateToDoViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var toDoTableVC : ToDoTableViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let newToDo = ToDo()
        newToDo.important = importantSwitch.isOn
        if let name = nameTextField.text {
            newToDo.name = name
        }
        toDoTableVC!.toDos.append(newToDo)
        toDoTableVC!.tableView.reloadData()
        
        navigationController?.popViewController(animated: true)
    }
    
}
