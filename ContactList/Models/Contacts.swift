struct Contact {
    let name: String
    let surname: String
    let number: Int
    let email: String

    static func getAllContacts() -> [Contact] {
        [
            Contact(name: "John", surname: "Snow", number: 12345, email: "john@snow.com"),
            Contact(name: "Daenerys", surname: "Targaryen", number: 54321, email: "daenerys@targaryen.com"),
            Contact(name: "Tyrion", surname: "Lannister", number: 67890, email: "tyrion@lannister.com")
        ]
    }
    
    // To Create Random Elements
    static var allNames: [String] = ["Emma", "Liam", "Olivia", "Noah", "Ava"]
    static var allSurnames: [String] = ["Smith", "Johnson", "Williams", "Brown", "Jones"]
    static var allNumbers: [Int] = [12345, 98765, 54321, 67890, 13579]
    static var allEmails: [String] = ["example1@gmail.com", "user2@yahoo.com", "contact3@hotmail.com", "name4@outlook.com", "test5@mail.com"]

    static func getRandomContacts() -> [Contact] {
        var arrayWithContacts: [Contact] = []
        for _ in 0..<5 {
            guard let randomName = allNames.randomElement(),
                  let randomSurname = allSurnames.randomElement(),
                  let randomNumber = allNumbers.randomElement(),
                  let randomEmail = allEmails.randomElement() else { continue }
            arrayWithContacts.append(Contact(name: randomName, surname: randomSurname, number: randomNumber, email: randomEmail))
        }
        return arrayWithContacts
    }
}
