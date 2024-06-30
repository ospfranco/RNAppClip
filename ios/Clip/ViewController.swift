import UIKit
import ReactNativeHost

class ViewController: UIViewController {
  
  override func loadView() {
    if let host = BridgeManager.shared.host {
          self.view = host.view(
              moduleName: "clip",
              initialProperties: nil
          )
      }
      
  }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

