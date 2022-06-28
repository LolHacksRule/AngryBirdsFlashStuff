package §#_§
{
   import §5=§.§8O§;
   import §=!i§.CachedDataEvent;
   import §>o§.§7b§;
   import §^!7§.§+!I§;
   import §^!7§.RetryingURLLoaderErrorEvent;
   import §^!7§.§[!<§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   [Event(name="securityError",type="flash.events.SecurityErrorEvent")]
   [Event(name="ioError",type="flash.events.IOErrorEvent")]
   [Event(name="progress",type="flash.events.ProgressEvent")]
   [Event(name="totalItemCountUpdated",type="com.angrybirds.friendsbar.events.CachedDataEvent")]
   [Event(name="dataLoaded",type="com.angrybirds.friendsbar.events.CachedDataEvent")]
   public class CachedData extends EventDispatcher
   {
       
      
      protected var §+p§:Array;
      
      protected var §`!C§:String;
      
      protected var §,!Q§:Number = -1;
      
      protected var §=!4§:§9k§;
      
      protected var §1I§:Vector.<§9k§>;
      
      public function CachedData(remoteServiceUrl:String)
      {
         this.§+p§ = [];
         this.§1I§ = new Vector.<§9k§>(0);
         super();
         this.§`!C§ = remoteServiceUrl;
      }
      
      public function § !i§(itemIndex:int, itemCount:int) : void
      {
         var urlRequest:URLRequest = §+!I§.§[O§(this.§`!C§);
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = "application/json";
         urlRequest.data = §7b§.encode({
            "index":itemIndex,
            "count":itemCount
         });
         var urlLoader:§[!<§ = new §[!<§();
         urlLoader.dataFormat = URLLoaderDataFormat.TEXT;
         var loadingOperation:§9k§ = new §9k§(itemIndex,itemCount,urlLoader,urlRequest);
         this.§[?§(loadingOperation);
         this.§1I§.unshift(loadingOperation);
         if(!this.§=!4§)
         {
            this.§,!8§();
         }
      }
      
      protected function §,!8§() : void
      {
         if(this.§=!4§ || this.§1I§.length == 0)
         {
            return;
         }
         this.§=!4§ = this.§1I§.pop();
         this.§=!4§.urlLoader.load(this.§=!4§.urlRequest);
      }
      
      protected function onUrlLoaderComplete(e:Event) : void
      {
         var dataObj:Object = this.§]0§(this.§=!4§.urlLoader.data);
         this.dataLoaded(dataObj);
      }
      
      protected function dataLoaded(dataObj:Object) : void
      {
         for(var i:int = 0; i < (dataObj.items as Array).length; i++)
         {
            this.§+p§[this.§=!4§.itemIndex + i] = dataObj.items[i];
         }
         if(dataObj.totalItemCount != this.§,!Q§)
         {
            this.§,!Q§ = dataObj.totalItemCount;
            dispatchEvent(new CachedDataEvent(CachedDataEvent.TOTAL_ITEM_COUNT_UPDATED,this.§,!Q§,this.§,!Q§));
         }
         dispatchEvent(new CachedDataEvent(CachedDataEvent.DATA_LOADED,this.§=!4§.itemIndex,this.§=!4§.itemCount));
         this.§%!5§(this.§=!4§);
         this.§=!4§ = null;
         if(this.§1I§.length > 0)
         {
            this.§,!8§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§,!Q§;
      }
      
      protected function §]0§(data:Object) : Object
      {
         var dataObj:Object = null;
         try
         {
            dataObj = §7b§.§#!a§(String(data));
         }
         catch(e:Error)
         {
            throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§8O§.§?6§);
         }
         return dataObj;
      }
      
      public function get data() : Array
      {
         return this.§+p§;
      }
      
      public function get §#]§() : Boolean
      {
         return this.§=!4§ != null;
      }
      
      protected function §[?§(loadOperation:§9k§) : void
      {
         loadOperation.urlLoader.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         loadOperation.urlLoader.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         loadOperation.urlLoader.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         loadOperation.urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         loadOperation.urlLoader.addEventListener(RetryingURLLoaderErrorEvent.§6!O§,dispatchEvent);
      }
      
      protected function §%!5§(loadOperation:§9k§) : void
      {
         loadOperation.urlLoader.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         loadOperation.urlLoader.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         loadOperation.urlLoader.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         loadOperation.urlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         loadOperation.urlLoader.removeEventListener(RetryingURLLoaderErrorEvent.§6!O§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§=!4§)
         {
            this.§%!5§(this.§=!4§);
            try
            {
               this.§=!4§.urlLoader.close();
            }
            catch(e:Error)
            {
            }
            this.§=!4§ = null;
         }
      }
   }
}
