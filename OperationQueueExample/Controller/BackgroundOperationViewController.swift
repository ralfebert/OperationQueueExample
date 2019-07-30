// © 2019 Ralf Ebert — iOS Example Project: OperationQueueExample
// License: https://opensource.org/licenses/0BSD

import UIKit

class BackgroundOperationViewController: UIViewController {

    @IBOutlet var resultsLabel: UILabel!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!

    @IBAction func startCalculate() {

        self.resultsLabel.text = String(approximatePi())

    }

}
