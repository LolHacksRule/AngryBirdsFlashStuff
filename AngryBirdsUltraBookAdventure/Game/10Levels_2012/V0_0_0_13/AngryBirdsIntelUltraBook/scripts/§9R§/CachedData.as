package §9R§
{
   import §+p§.CachedDataEvent;
   import §6!a§.§"!F§;
   import §6!a§.§>!K§;
   import §6!a§.RetryingURLLoaderErrorEvent;
   import §7p§.§]E§;
   import §?!G§.§8!-§;
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
       
      
      protected var §&^§:Array;
      
      protected var §'^§:String;
      
      protected var §1!V§:Number = -1;
      
      protected var §+-§:§!!?§;
      
      protected var §!§:Vector.<§!!?§>;
      
      public function CachedData(remoteServiceUrl:String)
      {
         this.§&^§ = [];
         this.§!§ = new Vector.<§!!?§>(0);
         super();
         this.§'^§ = remoteServiceUrl;
      }
      
      public function §&N§(itemIndex:int, itemCount:int) : void
      {
         var urlRequest:URLRequest = §"!F§.§=i§(this.§'^§);
         urlRequest.method = URLRequestMethod.POST;
         urlRequest.contentType = "application/json";
         urlRequest.data = §8!-§.encode({
            "index":itemIndex,
            "count":itemCount
         });
         var urlLoader:§>!K§ = new §>!K§();
         urlLoader.dataFormat = URLLoaderDataFormat.TEXT;
         var loadingOperation:§!!?§ = new §!!?§(itemIndex,itemCount,urlLoader,urlRequest);
         this.§1q§(loadingOperation);
         this.§!§.unshift(loadingOperation);
         if(!this.§+-§)
         {
            this.§1![§();
         }
      }
      
      protected function §1![§() : void
      {
         if(this.§+-§ || this.§!§.length == 0)
         {
            return;
         }
         this.§+-§ = this.§!§.pop();
         this.§+-§.urlLoader.load(this.§+-§.urlRequest);
      }
      
      protected function onUrlLoaderComplete(e:Event) : void
      {
         var dataObj:Object = this.§1!1§(this.§+-§.urlLoader.data);
         this.dataLoaded(dataObj);
      }
      
      protected function dataLoaded(dataObj:Object) : void
      {
         for(var i:int = 0; i < (dataObj.items as Array).length; i++)
         {
            this.§&^§[this.§+-§.itemIndex + i] = dataObj.items[i];
         }
         if(dataObj.totalItemCount != this.§1!V§)
         {
            this.§1!V§ = dataObj.totalItemCount;
            dispatchEvent(new CachedDataEvent(CachedDataEvent.TOTAL_ITEM_COUNT_UPDATED,this.§1!V§,this.§1!V§));
         }
         dispatchEvent(new CachedDataEvent(CachedDataEvent.DATA_LOADED,this.§+-§.itemIndex,this.§+-§.itemCount));
         this.§;x§(this.§+-§);
         this.§+-§ = null;
         if(this.§!§.length > 0)
         {
            this.§1![§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§1!V§;
      }
      
      protected function §1!1§(data:Object) : Object
      {
         var dataObj:Object = null;
         try
         {
            dataObj = §8!-§.§9N§(String(data));
         }
         catch(e:Error)
         {
            throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§]E§.§'-§);
         }
         return dataObj;
      }
      
      public function get data() : Array
      {
         return this.§&^§;
      }
      
      public function get §5!W§() : Boolean
      {
         return this.§+-§ != null;
      }
      
      protected function §1q§(loadOperation:§!!?§) : void
      {
         loadOperation.urlLoader.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         loadOperation.urlLoader.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         loadOperation.urlLoader.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         loadOperation.urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         loadOperation.urlLoader.addEventListener(RetryingURLLoaderErrorEvent.§3Y§,dispatchEvent);
      }
      
      protected function §;x§(loadOperation:§!!?§) : void
      {
         loadOperation.urlLoader.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         loadOperation.urlLoader.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         loadOperation.urlLoader.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         loadOperation.urlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         loadOperation.urlLoader.removeEventListener(RetryingURLLoaderErrorEvent.§3Y§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§+-§)
         {
            this.§;x§(this.§+-§);
            try
            {
               this.§+-§.urlLoader.close();
            }
            catch(e:Error)
            {
            }
            this.§+-§ = null;
         }
      }
   }
}
