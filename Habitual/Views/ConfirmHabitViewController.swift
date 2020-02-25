//
//  ConfirmHabitViewController.swift
//  Habitual
//
//  Created by Megan OBryan on 2/25/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

class ConfirmHabitViewController: UIViewController {
    
    @IBOutlet weak var habitImageView: UIImageView!
    @IBOutlet weak var habitNameInputField: UITextField!
    
    var habitImage: Habit.Images!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateUI()
    }

    
    private func updateUI() {
        title = "New Habit"
        habitImageView.image = habitImage.image
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func createHabitButtonPressed(_ sender: Any) {
        var persistenceLayer = PersistenceLayer()
        guard let habitText = habitNameInputField.text else { return }
        persistenceLayer.createNewHabit(name: habitText, image: habitImage)
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
