//
//  APIService.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 20/08/21.
//

import Foundation
import Alamofire

class APIService {
    
    public static func getCurrenciesAvaliable(completionHandler: @escaping(Result<Currency, Error>) -> Void) {
        AF.request(APIRouter.getList).responseData { response in
            switch response.result  {
                case .success(let data):
                    do {
                        let currentList = try JSONDecoder().decode(Currency.self, from: data)
                        completionHandler(.success(currentList))
                    }catch {
                        completionHandler(.failure(error))
                    }
                    break
                case .failure(let error):
                    completionHandler(.failure(error))
                    break
            }
        }
    }
}
