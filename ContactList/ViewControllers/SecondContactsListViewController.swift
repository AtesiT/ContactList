import UIKit

final class SecondContactsListViewController: UITableViewController {
    let contactList = Contact.getAllContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

// MARK: - Settings of table
extension SecondContactsListViewController {
    // The count of rows in one section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    // The count of sections in our the table
    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }
    
    // Set a title for sections
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(contactList[section].name) \(contactList[section].surname)"
    }

    // Settings of a cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "phoneAndMailCell", for: indexPath)
        let contact = contactList[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = "📞 \(contact.number)"
        } else {
            content.text = "✉️ \(contact.email)"
        }
        
        cell.contentConfiguration = content
        return cell
    }
}
