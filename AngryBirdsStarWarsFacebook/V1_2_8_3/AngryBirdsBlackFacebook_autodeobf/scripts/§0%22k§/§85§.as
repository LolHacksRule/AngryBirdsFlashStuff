package §0"k§
{
   import §"d§.§-F§;
   import §%!G§.§0"V§;
   import §%!G§.§5!>§;
   import §%!G§.§?!g§;
   import §+d§.§8#&§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §85§ extends EventDispatcher
   {
       
      
      protected var §+3§:Array;
      
      protected var §-"&§:String;
      
      protected var §,6§:Number = -1;
      
      protected var §]!k§:§2!c§;
      
      protected var §="h§:Vector.<§2!c§>;
      
      public function §85§(param1:String, param2:Array = null)
      {
         this.§+3§ = [];
         this.§="h§ = new Vector.<§2!c§>(0);
         super();
         this.§-"&§ = param1;
         if(param2 != null)
         {
            this.§+3§ = param2;
            this.§,6§ = param2.length;
         }
      }
      
      public function loadItems(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §0"V§.§2"r§(this.§-"&§);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = "application/json";
         _loc3_.data = JSON.stringify({
            "index":param1,
            "count":param2
         });
         var _loc4_:URLLoader;
         (_loc4_ = this.createURLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§2!c§ = new §2!c§(param1,param2,_loc4_,_loc3_);
         this.§+!-§(_loc5_);
         this.§="h§.unshift(_loc5_);
         if(!this.§]!k§)
         {
            this.§+"P§();
         }
      }
      
      protected function createURLLoader() : URLLoader
      {
         return new §?!g§();
      }
      
      protected function §+"P§() : void
      {
         if(this.§]!k§ || this.§="h§.length == 0)
         {
            return;
         }
         this.§]!k§ = this.§="h§.pop();
         this.§]!k§.§ 1§.load(this.§]!k§.§!"9§);
      }
      
      protected function §@P§(param1:Event) : void
      {
         var _loc2_:Object = this.parseResponse(this.§]!k§.§ 1§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.items as Array).length)
         {
            this.§+3§[this.§]!k§.§'"p§ + _loc2_] = param1.items[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§,6§)
         {
            this.§,6§ = param1.totalItemCount;
            dispatchEvent(new §-F§(§-F§.§&!J§,this.§,6§,this.§,6§));
         }
         var _loc3_:§2!c§ = this.§]!k§;
         this.§>!c§(this.§]!k§);
         this.§]!k§ = null;
         if(this.§="h§.length > 0)
         {
            this.§+"P§();
         }
         dispatchEvent(new §-F§(§-F§.§&!h§,_loc3_.§'"p§,_loc3_.§0O§));
      }
      
      public function get totalItemCount() : Number
      {
         return this.§,6§;
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
            throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§8#&§.§[!"§);
         }
         return dataObj;
      }
      
      public function get data() : Array
      {
         return this.§+3§;
      }
      
      public function get isLoading() : Boolean
      {
         return this.§]!k§ != null;
      }
      
      protected function §+!-§(param1:§2!c§) : void
      {
         param1.§ 1§.addEventListener(Event.COMPLETE,this.§@P§);
         param1.§ 1§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§ 1§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§ 1§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§ 1§.addEventListener(§5!>§.§>i§,dispatchEvent);
      }
      
      protected function §>!c§(param1:§2!c§) : void
      {
         param1.§ 1§.removeEventListener(Event.COMPLETE,this.§@P§);
         param1.§ 1§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§ 1§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§ 1§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§ 1§.removeEventListener(§5!>§.§>i§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§]!k§)
         {
            this.§>!c§(this.§]!k§);
            try
            {
               this.§]!k§.§ 1§.close();
            }
            catch(e:Error)
            {
            }
            this.§]!k§ = null;
         }
      }
   }
}
