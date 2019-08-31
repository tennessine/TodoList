//
//  CreateToDoViewController.swift
//  TodoList
//
//  Created by gekongfei on 2019/8/31.
//  Copyright © 2019 gekongfei. All rights reserved.
//

import UIKit
import CoreData

class CreateToDoViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var toDoTableVC : ToDoTableViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addTapped(_ sender: Any) {
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let newToDo = ToDo(context: context)
            
            newToDo.important = importantSwitch.isOn
            if let name = nameTextField.text {
                newToDo.name = name
            }
            
            (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
        }
        
        navigationController?.popViewController(animated: true)
    }
    
}
