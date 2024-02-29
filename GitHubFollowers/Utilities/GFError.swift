//
// Copyright (c) Hellen Ferrari. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete the request. Please check your internet connection"
    case invalidResponse = "Invalid reponse from the server. Please try again"
    case invalidData = "The data received was invalid. Please try again."
}
