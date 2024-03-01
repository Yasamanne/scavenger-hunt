//
//  Task.swift
//  scavenger-hunt
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Codepath Project1",
                 description: "PHPicker and MapKit"),
            Task(title: "Design Landing Page Mockup",
                 description: "Create a visually appealing mockup for our website's landing page, reflecting our brand identity and user-friendly design. Provide multiple iterations for feedback."),
            Task(title: "Implement User Authentication System",
                 description: "Develop a secure user authentication system with registration, login, logout, and password reset features. Ensure integration with existing backend and frontend components.")
        ]
    }
}
