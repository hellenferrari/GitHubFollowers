//
// Copyright (c) Hellen Ferrari. All rights reserved.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) { // Variadic Parameter
        for view in views {
            addSubview(view)
        }
    }
}
