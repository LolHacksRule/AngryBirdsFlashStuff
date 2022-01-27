package §"k§
{
   import §1!i§.§8"x§;
   import §]Q§.§2T§;
   import §`!o§.§##[§;
   import §`!o§.§2,§;
   import §`!o§.§<9§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §6!a§ extends EventDispatcher
   {
       
      
      protected var §%4§:Array;
      
      protected var §&"7§:String;
      
      protected var §>##§:Number = -1;
      
      protected var §4!0§:§6N§;
      
      protected var §4"_§:Vector.<§6N§>;
      
      public function §6!a§(param1:String, param2:Array = null)
      {
         this.§%4§ = [];
         this.§4"_§ = new Vector.<§6N§>(0);
         super();
         this.§&"7§ = param1;
         if(param2 != null)
         {
            this.§%4§ = param2;
            this.§>##§ = param2.length;
         }
      }
      
      public function loadItems(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §<9§.§""I§(this.§&"7§);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = "application/json";
         _loc3_.data = JSON.stringify({
            "index":param1,
            "count":param2
         });
         var _loc4_:URLLoader;
         (_loc4_ = this.createURLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§6N§ = new §6N§(param1,param2,_loc4_,_loc3_);
         this.§!!r§(_loc5_);
         this.§4"_§.unshift(_loc5_);
         if(!this.§4!0§)
         {
            this.§+"i§();
         }
      }
      
      protected function createURLLoader() : URLLoader
      {
         return new §2,§();
      }
      
      protected function §+"i§() : void
      {
         if(this.§4!0§ || this.§4"_§.length == 0)
         {
            return;
         }
         this.§4!0§ = this.§4"_§.pop();
         this.§4!0§.§@"<§.load(this.§4!0§.§1"@§);
      }
      
      protected function §""#§(param1:Event) : void
      {
         var _loc2_:Object = this.parseResponse(this.§4!0§.§@"<§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.items as Array).length)
         {
            this.§%4§[this.§4!0§.§9#U§ + _loc2_] = param1.items[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§>##§)
         {
            this.§>##§ = param1.totalItemCount;
            dispatchEvent(new §2T§(§2T§.§&"g§,this.§>##§,this.§>##§));
         }
         var _loc3_:§6N§ = this.§4!0§;
         this.§;"%§(this.§4!0§);
         this.§4!0§ = null;
         if(this.§4"_§.length > 0)
         {
            this.§+"i§();
         }
         dispatchEvent(new §2T§(§2T§.§-D§,_loc3_.§9#U§,_loc3_.§3!D§));
      }
      
      public function get totalItemCount() : Number
      {
         return this.§>##§;
      }
      
      protected function parseResponse(param1:Object) : Object
      {
         var dataObj:Object = null;
         var data:Object = param1;
         try
         {
            dataObj = JSON.parse(String(data));
         }
         catch(e:Error)
         {
            throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§8"x§.§`4§);
         }
         return dataObj;
      }
      
      public function get data() : Array
      {
         return this.§%4§;
      }
      
      public function get isLoading() : Boolean
      {
         return this.§4!0§ != null;
      }
      
      protected function §!!r§(param1:§6N§) : void
      {
         param1.§@"<§.addEventListener(Event.COMPLETE,this.§""#§);
         param1.§@"<§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§@"<§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§@"<§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§@"<§.addEventListener(§##[§.§>g§,dispatchEvent);
      }
      
      protected function §;"%§(param1:§6N§) : void
      {
         param1.§@"<§.removeEventListener(Event.COMPLETE,this.§""#§);
         param1.§@"<§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§@"<§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§@"<§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§@"<§.removeEventListener(§##[§.§>g§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§4!0§)
         {
            this.§;"%§(this.§4!0§);
            try
            {
               this.§4!0§.§@"<§.close();
            }
            catch(e:Error)
            {
            }
            this.§4!0§ = null;
         }
      }
   }
}
