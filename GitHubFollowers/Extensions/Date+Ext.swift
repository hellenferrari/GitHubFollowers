//
// Copyright (c) Hellen Ferrari. All rights reserved.
//

import Foundation

extension Date {

    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
}
