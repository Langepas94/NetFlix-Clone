//
//  Extensions.swift
//  NetFlix Clone
//
//  Created by Артём Тюрморезов on 18.10.2022.
//

import Foundation
// экстреншн в котором делаем функции для преобразования первых букв в Большой регистр
extension String {
    func capitalizedFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
