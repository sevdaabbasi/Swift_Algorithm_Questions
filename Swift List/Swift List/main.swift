//
//  main.swift
//  Swift List
//
//  Created by Sevda Abbasi on 18.08.2024.
//

import Foundation


let students: [(name: String, age: Int, grade: Int)] = [
    ("Ali", 18, 85),
    ("Ayşe", 19, 72),
    ("Mehmet", 17, 60),
    ("Fatma", 20, 45),
    ("Ahmet", 21, 90)
]

// List with names and ages
let namesAndAges = students.map { ($0.name, $0.age) }
print("Öğrencilerin adları ve yaşları: \(namesAndAges)")

// Those with grades below 70
let lowGrades = students.filter { $0.grade < 70 }
print("Notu 70'in altında olan öğrenciler: \(lowGrades.map { $0.name })")
print("Bu öğrencilerin sayısı: \(lowGrades.count)")

