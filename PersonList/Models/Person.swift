//
//  Person.swift
//  PersonList
//
//  Created by fear on 22.05.2024.
//

struct Person {
    let name: String
    let surname: String
    
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonList() -> [Person] {
        var personList: [Person] = []

        for _ in 0..<names.count {
            let person = Person(
                name: names.remove(
                    at: names.firstIndex(
                        of: names.randomElement() ?? ""
                    ) ?? 0
                ),
                surname: surnames.remove(
                    at: surnames.firstIndex(
                        of: surnames.randomElement() ?? ""
                    ) ?? 0
                ),
                phone: phoneNumbers.remove(
                    at: phoneNumbers.firstIndex(
                        of: phoneNumbers.randomElement() ?? ""
                    ) ?? 0
                ),
                email: emails.remove(
                    at: emails.firstIndex(
                        of: emails.randomElement() ?? ""
                    ) ?? 0
                )
                )
            personList.append(person)
        }
        return personList
    }
}
