//
//  APIRouter.swift
//  BTGPactualMobileChallenger
//
//  Created by Julio Cezar Kenji Miyahira on 20/08/21.
//

import Alamofire
//https://btg-mobile-challenge.herokuapp.com/list
//https://btg-mobile-challenge.herokuapp.com/live

enum APIRouter: URLRequestConvertible {
    
    case getList
    case getConversionList
    
    var path: String {
        switch self {
            case .getList:
                return "/list"
            case .getConversionList:
                return "/live"
        }
    }
    
    var method: HTTPMethod {
        switch self {
            case .getList:
                return .get
            case .getConversionList:
                return .get
        }
    }
    
    var parameter: Parameters? {
        return nil
    }
    
    func asURLRequest() throws -> URLRequest {
        let url = URL(string: "https://btg-mobile-challenge.herokuapp.com".appending(path))
        var request = URLRequest.init(url: url!)
        request.method = method
        request.timeoutInterval = TimeInterval(10 * 1000)
        return try URLEncoding.default.encode(request, with: parameter)
    }
}
