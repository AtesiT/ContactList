import UIKit

final class DetailsContactViewController: UIViewController {

    @IBOutlet var phoneContactLabel: UILabel!
    @IBOutlet var emailContactLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneContactLabel.text = "Number: \(contact.number)"
        emailContactLabel.text = "Email: \(contact.email)"
    }
}
