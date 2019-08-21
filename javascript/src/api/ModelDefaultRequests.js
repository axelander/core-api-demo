// @flow


export default class DefaultRequests {
    constructor(bridge) {
     this._bridge = bridge;
    }

        /**
         * Registers a handler for a particular api.  This allows javascript to handle a request from native.
         * @param The handler function, taking a single parameter being the data of the request and returning a Promise. Implementer of the handler should either resolve the promise with an object being the response data (if any) or reject the promise with an Error
         */
    registerFindMenusRequestHandler( handler : Function): Promise<any> {
        this._bridge.registerRequestHandler("com.CoreApi.ern.api.request.findMenus", handler);
    }

    //------------------------------------------------------------------------------------------------------------------------------------


    /**
      * Returns all menus
      * @param  storeId The storeId
      * @param integer timeout in milliseconds
      * @return {Promise} a {@link https://www.promisejs.org/|Promise}, with data of type {@link Array.<module:com.CoreApi.ern.model/Item> }
      */

     findMenus(storeId: number,timeout: number): Promise<any> {
                return this._bridge.sendRequest("com.CoreApi.ern.api.request.findMenus", { data:storeId, timeout });

    }
}
