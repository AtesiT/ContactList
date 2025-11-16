import UIKit

final class FirstContactsListViewController: UITableViewController {
    let contactList = Contact.getAllContacts()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension FirstContactsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = "\(contact.name) \(contact.surname)"
        cell.contentConfiguration = content
        return cell
        
    }
}
