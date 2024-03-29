/*
* Copyright 2017 WalmartLabs
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
* http://www.apache.org/licenses/LICENSE-2.0
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

package com.CoreApi.ern.api;

import android.support.annotation.NonNull;

import com.walmartlabs.electrode.reactnative.bridge.ElectrodeBridgeHolder;
import com.walmartlabs.electrode.reactnative.bridge.ElectrodeBridgeRequestHandler;
import com.walmartlabs.electrode.reactnative.bridge.ElectrodeBridgeResponseListener;
import com.walmartlabs.electrode.reactnative.bridge.None;
import com.walmartlabs.electrode.reactnative.bridge.RequestHandlerProcessor;
import com.walmartlabs.electrode.reactnative.bridge.RequestProcessor;
import com.walmartlabs.electrode.reactnative.bridge.RequestHandlerHandle;
import java.util.*;
import com.CoreApi.ern.model.Item;


final class DefaultRequests implements DefaultApi.Requests {
    DefaultRequests() {}


    @Override
    public RequestHandlerHandle registerFindMenusRequestHandler(@NonNull final ElectrodeBridgeRequestHandler<Integer, List<Item>> handler) {
        return new RequestHandlerProcessor<>(REQUEST_FIND_MENUS, Integer.class, (Class) Item.class, handler).execute();
    }

    //------------------------------------------------------------------------------------------------------------------------------------

    @Override
    public void findMenus(Integer storeId,@NonNull final ElectrodeBridgeResponseListener<List<Item>> responseListener) {
        new RequestProcessor<>(REQUEST_FIND_MENUS,  storeId, (Class) List.class, Item.class, responseListener).execute();
    }
}