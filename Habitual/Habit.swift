//
//  Habit.swift
//  Habitual
//
//  Created by Megan OBryan on 2/20/20.
//  Copyright © 2020 Makeschool. All rights reserved.
//

import UIKit

struct Habit {
    var title: String
    var dateCreated: Date
    var selectedImage: UIImage
    var currentStreak: Int
    var bestStreak: Int
    var lastCompletionDate: Date?
    var numberOfCompletions: Int
    var completedToday: Bool {
        return lastCompletionDate?.isToday ?? false
    }
}
