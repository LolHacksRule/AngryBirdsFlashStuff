package §'!%§
{
   import § $§.§-!Q§;
   import § $§.§1!6§;
   import § $§.RetryingURLLoaderErrorEvent;
   import §2S§.CachedDataEvent;
   import §9!!§.§1!E§;
   import §?!f§.§]!f§;
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
       
      
      protected var §@! §:Array;
      
      protected var § n§:String;
      
      protected var §0r§:Number = -1;
      
      protected var §-!b§:§3&§;
      
      protected var §<z§:Vector.<§3&§>;
      
      public function CachedData(remoteServiceUrl:String)
      {
         this.§@! § = [];
         this.§<z§ = new Vector.<§3&§>(0);
         super();
         this.§ n§ = remoteServiceUrl;
      }
      
      public function §&a§(itemIndex:int, itemCount:int) : void
      {
         var urlRequest:URLRequest = §-!Q§.§<!%§(this.§ n§);
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = "application/json";
         urlRequest.data = §]!f§.encode({
            "index":itemIndex,
            "count":itemCount
         });
         var urlLoader:§1!6§ = new §1!6§();
         urlLoader.dataFormat = URLLoaderDataFormat.TEXT;
         var loadingOperation:§3&§ = new §3&§(itemIndex,itemCount,urlLoader,urlRequest);
         this.§ 6§(loadingOperation);
         this.§<z§.unshift(loadingOperation);
         if(!this.§-!b§)
         {
            this.§7!"§();
         }
      }
      
      protected function §7!"§() : void
      {
         if(this.§-!b§ || this.§<z§.length == 0)
         {
            return;
         }
         this.§-!b§ = this.§<z§.pop();
         this.§-!b§.urlLoader.load(this.§-!b§.urlRequest);
      }
      
      protected function onUrlLoaderComplete(e:Event) : void
      {
         var dataObj:Object = this.§%!V§(this.§-!b§.urlLoader.data);
         this.dataLoaded(dataObj);
      }
      
      protected function dataLoaded(dataObj:Object) : void
      {
         for(var i:int = 0; i < (dataObj.items as Array).length; i++)
         {
            this.§@! §[this.§-!b§.itemIndex + i] = dataObj.items[i];
         }
         if(dataObj.totalItemCount != this.§0r§)
         {
            this.§0r§ = dataObj.totalItemCount;
            dispatchEvent(new CachedDataEvent(CachedDataEvent.TOTAL_ITEM_COUNT_UPDATED,this.§0r§,this.§0r§));
         }
         dispatchEvent(new CachedDataEvent(CachedDataEvent.DATA_LOADED,this.§-!b§.itemIndex,this.§-!b§.itemCount));
         this.§#<§(this.§-!b§);
         this.§-!b§ = null;
         if(this.§<z§.length > 0)
         {
            this.§7!"§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§0r§;
      }
      
      protected function §%!V§(data:Object) : Object
      {
         var dataObj:Object = null;
         try
         {
            dataObj = §]!f§.§ !5§(String(data));
         }
         catch(e:Error)
         {
            throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§1!E§.§`z§);
         }
         return dataObj;
      }
      
      public function get data() : Array
      {
         return this.§@! §;
      }
      
      public function get §?,§() : Boolean
      {
         return this.§-!b§ != null;
      }
      
      protected function § 6§(loadOperation:§3&§) : void
      {
         loadOperation.urlLoader.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         loadOperation.urlLoader.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         loadOperation.urlLoader.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         loadOperation.urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         loadOperation.urlLoader.addEventListener(RetryingURLLoaderErrorEvent.§9#§,dispatchEvent);
      }
      
      protected function §#<§(loadOperation:§3&§) : void
      {
         loadOperation.urlLoader.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         loadOperation.urlLoader.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         loadOperation.urlLoader.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         loadOperation.urlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         loadOperation.urlLoader.removeEventListener(RetryingURLLoaderErrorEvent.§9#§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§-!b§)
         {
            this.§#<§(this.§-!b§);
            try
            {
               this.§-!b§.urlLoader.close();
            }
            catch(e:Error)
            {
            }
            this.§-!b§ = null;
         }
      }
   }
}
