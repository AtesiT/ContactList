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
}
