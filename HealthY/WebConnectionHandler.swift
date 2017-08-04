import Foundation

class WebConnectionHandler: NSObject, URLSessionDelegate, URLSessionTaskDelegate, URLSessionDataDelegate {
    static var STATUS_CODE_LOGIN_COOKIE = 302
    var session: URLSession
    var responseData: NSMutableData
    var response: URLResponse
    var dataTask: URLSessionDataTask

    //MARK: -- Execute Request --

    func executeRequest(request: URLRequest) {

    }
}


