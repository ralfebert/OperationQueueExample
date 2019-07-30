// © 2019 Ralf Ebert — iOS Example Project: OperationQueueExample
// License: https://opensource.org/licenses/0BSD

import UIKit

class BackgroundOperationViewController: UIViewController {

    @IBOutlet var resultsLabel: UILabel!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!

    @IBAction func startCalculate() {

        self.activityIndicator.isHidden = false
        self.calculateInBackground { result in

            DispatchQueue.main.async {
                self.resultsLabel.text = String(result)
                self.activityIndicator.isHidden = true
            }
        }

    }

    func calculateInBackground(completion: @escaping (_ result: Double) -> Void) {
        DispatchQueue.global(qos: .userInitiated).async {
            completion(approximatePi())
        }
    }

}
