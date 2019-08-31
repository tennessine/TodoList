//
//  ToDoTableViewController.swift
//  TodoList
//
//  Created by gekongfei on 2019/8/31.
//  Copyright © 2019 gekongfei. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var toDos = [ToDo]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let toDo1 = ToDo()
        toDo1.name = "Walk the dog"
        toDo1.important = false
        
        let toDo2 = ToDo()
        toDo2.name = "Buy milk"
        toDo2.important = true
        
        toDos.append(toDo1)
        toDos.append(toDo2)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let currentToDo = toDos[indexPath.row]
        
        if currentToDo.important {
            cell.textLabel?.text = "❗️" + currentToDo.name
        } else {
            cell.textLabel?.text = currentToDo.name
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedToDo = toDos[indexPath.row]
        performSegue(withIdentifier: "moveToComplete", sender: selectedToDo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let createCV = segue.destination as? CreateToDoViewController {
            createCV.toDoTableVC = self
        }
        
        if let completeVC = segue.destination as? CompleteViewController {
            if let selectedToDo = sender as? ToDo {
                completeVC.toDo = selectedToDo
            }
        }
    }
    
}
