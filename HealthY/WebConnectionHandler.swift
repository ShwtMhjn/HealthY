import Foundation

class WebConnectionHandler: NSObject, URLSessionDelegate, URLSessionTaskDelegate, URLSessionDataDelegate {
    static var STATUS_CODE_LOGIN_COOKIE = 302
//    var session: URLSession
//    var responseData: NSMutableData
//    var response: URLResponse
//    var dataTask: URLSessionDataTask

    //MARK: -- Execute Request --
    override init() {
        
        super.init()
    }
    func executeRequest() {
        
        let urlString = URL(string: "https://raw.githubusercontent.com/psaini0212/healthy-data/master/data/response.json")
        if let url = urlString {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error)
                } else {
                    if let usableData = data {
                        let json = try? JSONSerialization.jsonObject(with: usableData, options: []);
                        print(json);
                    }
                }
            }
            task.resume()
        }
    }
}
