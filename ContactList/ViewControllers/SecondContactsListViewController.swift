import UIKit

final class SecondContactsListViewController: UITableViewController {
    let contactList = Contact.getAllContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension SecondContactsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "phoneAndMailCell", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.name
        cell.contentConfiguration = content
        return cell
    }
}
