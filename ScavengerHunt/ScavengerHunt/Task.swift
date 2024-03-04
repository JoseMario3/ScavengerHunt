//
//  Task.swift
//  ScavengerHunt
//
//  Created by Jose Folgar on 2/26/24.
//

import Foundation
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
            Task(title: "Beans",
                 description: "Beans Beans Beans"),
            Task(title: "Bear",
                 description: "Bear Bear Bear"),
            Task(title: "Beap",
                 description: "Beap Beap Beap")
        ]
    }
}
