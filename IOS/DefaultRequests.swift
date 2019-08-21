#if swift(>=4.0)
@objcMembers public class DefaultRequests: DefaultAPIRequests {

    public override func registerFindMenusRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID?{
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: DefaultAPI.kRequestFindMenus,
    reqClass: Int.self, 
    respClass: [Item].self,
    requestCompletionHandler: handler)
        return requestHandlerProcessor.execute()
    }


    public override func unregisterFindMenusRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
        return ElectrodeBridgeHolder.unregisterRequestHandler(with: uuid)
    }

    //------------------------------------------------------------------------------------------------------------------------------------


    public override func findMenus(storeId: Int, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<Int, [Item], Any>(
            requestName: DefaultAPI.kRequestFindMenus,
            requestPayload: storeId,
            respClass: [Item].self,
            responseItemType: Item.self,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }
}
#else
public class DefaultRequests: DefaultAPIRequests {

    public override func registerFindMenusRequestHandler(handler:  @escaping ElectrodeBridgeRequestCompletionHandler) -> UUID?{
        let requestHandlerProcessor = ElectrodeRequestHandlerProcessor(requestName: DefaultAPI.kRequestFindMenus,
    reqClass: Int.self, 
    respClass: [Item].self,
    requestCompletionHandler: handler)
        return requestHandlerProcessor.execute()
    }

    //------------------------------------------------------------------------------------------------------------------------------------



    public override func unregisterFindMenusRequestHandler(uuid: UUID) -> ElectrodeBridgeRequestCompletionHandler? {
      return ElectrodeBridgeHolder.unregisterRequestHandler(with: uuid)
    }

    public override func findMenus(storeId: Int, responseCompletionHandler: @escaping ElectrodeBridgeResponseCompletionHandler) {
        let requestProcessor = ElectrodeRequestProcessor<Int, [Item], Any>(
            requestName: DefaultAPI.kRequestFindMenus,
            requestPayload: storeId,
            respClass: [Item].self,
            responseItemType: Item.self,
            responseCompletionHandler: responseCompletionHandler)

        requestProcessor.execute()
    }
}
#endif
