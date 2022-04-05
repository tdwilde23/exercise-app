//
//  ViewController.swift
//  ExercisesApp
//
//  Created by Taylor Wilde on 3/31/22.
//

import UIKit

class ExerciseListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var exercises: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.exercises = ["Pushup","Pullup","Squat","Deadlift","Pushup","Pullup","Squat","Deadlift","Pushup","Pullup","Squat","Deadlift","Pushup","Pullup","Squat","Deadlift"]
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }


}

extension ExerciseListViewController: UITableViewDataSource {
    //MARK: Databsource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.exercises.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "exerciseCell") as! ExerciseCell
        
        
        cell.exerciseNameLabel.text = self.exercises[indexPath.row]
        cell.exerciseDescriptionLabel.text = "Description"
        
        return cell

        
        
        
    }
}

extension ExerciseListViewController: UITableViewDelegate {
    //MARK: Delegate
}
