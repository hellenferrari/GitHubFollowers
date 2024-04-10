//
// Copyright (c) Hellen Ferrari. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.sync { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
