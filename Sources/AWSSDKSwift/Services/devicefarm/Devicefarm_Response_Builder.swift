// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import Core

struct DevicefarmResponseBuilder<T: Initializable> {
    let bodyData: Data
    let urlResponse: HTTPURLResponse

    init(bodyData: Data, urlResponse: HTTPURLResponse) {
        self.bodyData = bodyData
        self.urlResponse = urlResponse
    }

    public func build() throws -> T {
        guard let dictionary = try JSONSerialization.jsonObject(with: bodyData, options: []) as? [String: Any] else { throw ResponseBuilderError.couldNotParseResponseJSON }
        let errorCode = dictionary["__type"] as? String ?? "UnknownError"
        let message = dictionary.filter({ $0.key.lowercased() == "message" }).first?.value as? String
        guard (200..<300).contains(urlResponse.statusCode) else {
            if let error = DevicefarmError(errorCode: errorCode, message: message) {
                throw error
            }
            if let error = AWSServerError(errorCode: errorCode, message: message) {
                throw error
            }
            throw AWSClientError(errorCode: errorCode, message: message)
        }
        return try AWSSDKSwift.construct(dictionary: dictionary)
    }
}