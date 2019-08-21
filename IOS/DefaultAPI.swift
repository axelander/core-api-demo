#if swift(>=4.0)
@objcMembers public class DefaultAPI: NSObject  {

    static let kRequestFindMenus = "com.CoreApi.ern.api.request.findMenus";


    public lazy var requests: DefaultAPIRequests = {
        return DefaultRequests()
    }()
}


@objcMembers public class DefaultAPIRequests: NSObject {
    public func registerFindMenusRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID?{
        assertionFailure("should override")
        return UUID()
    }


    public func unregisterFindMenusRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }


    public func findMenus(storeId: Int, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

}
#else
public class DefaultAPI: NSObject  {

    static let kRequestFindMenus = "com.CoreApi.ern.api.request.findMenus";


    public lazy var requests: DefaultAPIRequests = {
        return DefaultRequests()
    }()
}


public class DefaultAPIRequests: NSObject {
    public func registerFindMenusRequestHandler(handler: @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID?{
        assertionFailure("should override")
        return UUID()
    }


    public func unregisterFindMenusRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        assertionFailure("should override")
        return nil
    }


    public func findMenus(storeId: Int, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        assertionFailure("should override")
    }

}

#endif
