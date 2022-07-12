//
//  Extension + String.swift
//  MovieApp
//
//  Created by Maksim  on 03.07.2022.
//

import UIKit


extension String {
    func capitalizeFirstLatter() -> String {
         self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
