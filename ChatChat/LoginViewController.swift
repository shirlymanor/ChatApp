/*
 Learn how to use Firebase by creating chat app
 @Shirly Manor
 */
import UIKit
import Firebase
class LoginViewController: UIViewController {
  var ref:Firebase!
  override func viewDidLoad() {
    super.viewDidLoad()
     ref = Firebase(url:"https://chat-chat-96.firebaseio.com/")
  }
    override func viewDidAppear(animated: Bool) {
        ref.observeAuthEventWithBlock { (authData)in
            if authData != nil{
                self.performSegueWithIdentifier("LoginToChat", sender: nil)
            }
        }
    }

  @IBAction func loginDidTouch(sender: AnyObject) {
    ref.authAnonymouslyWithCompletionBlock { (error, authData) in}
  }
  
}

