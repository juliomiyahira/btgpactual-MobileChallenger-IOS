//
//  APIService.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 20/08/21.
//

import Foundation
import Alamofire

class APIService {
    
    public static func getCurrenciesAvaliable(completionHandler: @escaping(Result<[Currency], Error>) -> Void) {
        let configuration = URLSessionConfiguration.af.default
        let session = Session(configuration: configuration)
        session.request(APIRouter.getList).responseData { response in
            switch response.result  {
                case .success(let data):
                    print(data)
                    break
                case .failure(let error):
                    print(error)
                    break
            }
        }
        completionHandler(.success([]))
    }
}
