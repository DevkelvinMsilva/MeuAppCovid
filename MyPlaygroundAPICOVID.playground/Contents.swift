import Foundation

final class APIService {
            static let shared = APIService ()
            private init (){}
    private let headers = [
        "X-RapidAPI-Key": "071f020318msh3b868db266fac05p17c466jsnc892ad252885",
        "X-RapidAPI-Host": "covid-19-statistics.p.rapidapi.com"
     ]
    private let baseURLString = "https://covid-19-statistics.p.rapidapi.com/reports?iso=BRA"
    
    
    func fetchTotalData(completion : @escaping(Result<TotalData, error>) -> Void){
                
                let totalURLString = baseURLString + "/reports/total"
                
                let url = URL(string: totalURLString)
                
            
                guard let url = url else {
                    
                    return
                }

                
                
                let request = NSMutableURLRequest(url: NSURL(string: "https://covid-19-statistics.p.rapidapi.com/reports/total")! as URL,
                                                        cachePolicy: .useProtocolCachePolicy,
                                                    timeoutInterval: 10.0)
                request.httpMethod = "GET"
                request.allHTTPHeaderFields = headers

                let session = URLSession.shared
                let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
                    if (error != nil) {
                        print(error!)
                    } else {
                        let httpResponse = response as? HTTPURLResponse
                        print(httpResponse!)
                    }
                })

                dataTask.resume()

    }
}
