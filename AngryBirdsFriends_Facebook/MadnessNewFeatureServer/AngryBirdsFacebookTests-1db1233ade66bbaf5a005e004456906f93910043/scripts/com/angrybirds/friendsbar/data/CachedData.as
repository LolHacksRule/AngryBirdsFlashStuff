package com.angrybirds.friendsbar.data
{
   import com.angrybirds.friendsbar.events.CachedDataEvent;
   import com.rovio.server.ABFLoader;
   import com.rovio.server.RetryingURLLoaderErrorEvent;
   import com.rovio.server.URLRequestFactory;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class CachedData extends EventDispatcher
   {
       
      
      protected var mData:Array;
      
      protected var mRemoteServiceUrl:String;
      
      protected var mRemoteServiceUrlRequestMethod:String;
      
      protected var mTotalItemCount:Number = -1;
      
      protected var mCurrentLoadingOperation:LoadingOperation;
      
      protected var mPendingLoadingOperations:Vector.<LoadingOperation>;
      
      public function CachedData(remoteServiceUrl:String)
      {
         this.mData = [];
         this.mPendingLoadingOperations = new Vector.<LoadingOperation>(0);
         super();
         this.mRemoteServiceUrl = remoteServiceUrl;
      }
      
      public function loadItems(itemIndex:int, itemCount:int) : void
      {
         var urlRequest:URLRequest = URLRequestFactory.getNonCachingURLRequest(this.mRemoteServiceUrl);
         urlRequest.method = this.mRemoteServiceUrlRequestMethod;
         urlRequest.contentType = "application/json";
         if(this.mRemoteServiceUrlRequestMethod == URLRequestMethod.POST)
         {
            urlRequest.data = JSON.stringify({"count":itemCount});
         }
         var urlLoader:ABFLoader = new ABFLoader();
         urlLoader.dataFormat = URLLoaderDataFormat.TEXT;
         var loadingOperation:LoadingOperation = new LoadingOperation(itemIndex,itemCount,urlLoader,urlRequest);
         this.addLoadOperationEventListeners(loadingOperation);
         this.mPendingLoadingOperations.unshift(loadingOperation);
         if(!this.mCurrentLoadingOperation)
         {
            this.startNextLoadingOperation();
         }
      }
      
      protected function startNextLoadingOperation() : void
      {
         if(this.mCurrentLoadingOperation || this.mPendingLoadingOperations.length == 0)
         {
            return;
         }
         this.mCurrentLoadingOperation = this.mPendingLoadingOperations.pop();
         this.mCurrentLoadingOperation.urlLoader.load(this.mCurrentLoadingOperation.urlRequest);
      }
      
      protected function onUrlLoaderComplete(e:Event) : void
      {
         var dataObj:Object = this.parseResponse(this.mCurrentLoadingOperation.urlLoader.data);
         this.dataLoaded(dataObj);
      }
      
      protected function dataLoaded(dataObj:Object) : void
      {
         for(var i:int = 0; i < (dataObj.players as Array).length; i++)
         {
            this.mData[this.mCurrentLoadingOperation.itemIndex + i] = dataObj.players[i];
         }
         if(dataObj.totalItemCount != this.mTotalItemCount)
         {
            this.mTotalItemCount = dataObj.totalItemCount;
            dispatchEvent(new CachedDataEvent(CachedDataEvent.TOTAL_ITEM_COUNT_UPDATED,this.mTotalItemCount,this.mTotalItemCount));
         }
         dispatchEvent(new CachedDataEvent(CachedDataEvent.DATA_LOADED,this.mCurrentLoadingOperation.itemIndex,this.mCurrentLoadingOperation.itemCount));
         this.clearLoadOperationEventListeners(this.mCurrentLoadingOperation);
         this.mCurrentLoadingOperation = null;
         if(this.mPendingLoadingOperations.length > 0)
         {
            this.startNextLoadingOperation();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.mTotalItemCount;
      }
      
      protected function parseResponse(data:Object) : Object
      {
         return data;
      }
      
      public function get data() : Array
      {
         return this.mData;
      }
      
      public function get isLoading() : Boolean
      {
         return this.mCurrentLoadingOperation != null;
      }
      
      protected function addLoadOperationEventListeners(loadOperation:LoadingOperation) : void
      {
         loadOperation.urlLoader.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         loadOperation.urlLoader.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         loadOperation.urlLoader.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         loadOperation.urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         loadOperation.urlLoader.addEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,dispatchEvent);
      }
      
      protected function clearLoadOperationEventListeners(loadOperation:LoadingOperation) : void
      {
         loadOperation.urlLoader.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         loadOperation.urlLoader.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         loadOperation.urlLoader.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         loadOperation.urlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         loadOperation.urlLoader.removeEventListener(RetryingURLLoaderErrorEvent.THIRD_PARTY_COOKIES_DISABLED,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.mCurrentLoadingOperation)
         {
            this.clearLoadOperationEventListeners(this.mCurrentLoadingOperation);
            try
            {
               this.mCurrentLoadingOperation.urlLoader.close();
            }
            catch(e:Error)
            {
            }
            this.mCurrentLoadingOperation = null;
         }
      }
   }
}
