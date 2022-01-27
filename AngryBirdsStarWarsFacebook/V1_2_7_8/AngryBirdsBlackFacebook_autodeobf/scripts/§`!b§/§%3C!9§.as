package §`!b§
{
   import §,!_§.§"!c§;
   import §,!_§.§,"l§;
   import §,!_§.§>!_§;
   import §7A§.§<"M§;
   import §[!`§.§>"6§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §<!9§ extends EventDispatcher
   {
       
      
      protected var §,6§:Array;
      
      protected var §'I§:String;
      
      protected var §-"-§:Number = -1;
      
      protected var §8X§:§ v§;
      
      protected var §9"S§:Vector.<§ v§>;
      
      public function §<!9§(param1:String, param2:Array = null)
      {
         this.§,6§ = [];
         this.§9"S§ = new Vector.<§ v§>(0);
         super();
         this.§'I§ = param1;
         if(param2 != null)
         {
            this.§,6§ = param2;
            this.§-"-§ = param2.length;
         }
      }
      
      public function loadItems(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §>!_§.§^O§(this.§'I§);
         _loc3_.method = URLRequestMethod.POST;
         _loc3_.contentType = "application/json";
         _loc3_.data = JSON.stringify({
            "index":param1,
            "count":param2
         });
         var _loc4_:URLLoader;
         (_loc4_ = this.createURLLoader()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§ v§ = new § v§(param1,param2,_loc4_,_loc3_);
         this.§""I§(_loc5_);
         this.§9"S§.unshift(_loc5_);
         if(!this.§8X§)
         {
            this.§78§();
         }
      }
      
      protected function createURLLoader() : URLLoader
      {
         return new §"!c§();
      }
      
      protected function §78§() : void
      {
         if(this.§8X§ || this.§9"S§.length == 0)
         {
            return;
         }
         this.§8X§ = this.§9"S§.pop();
         this.§8X§.§0§.load(this.§8X§.§5!=§);
      }
      
      protected function §0"=§(param1:Event) : void
      {
         var _loc2_:Object = this.parseResponse(this.§8X§.§0§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.items as Array).length)
         {
            this.§,6§[this.§8X§.§#!O§ + _loc2_] = param1.items[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§-"-§)
         {
            this.§-"-§ = param1.totalItemCount;
            dispatchEvent(new §>"6§(§>"6§.§3"&§,this.§-"-§,this.§-"-§));
         }
         var _loc3_:§ v§ = this.§8X§;
         this.§-"l§(this.§8X§);
         this.§8X§ = null;
         if(this.§9"S§.length > 0)
         {
            this.§78§();
         }
         dispatchEvent(new §>"6§(§>"6§.§["<§,_loc3_.§#!O§,_loc3_.§"!2§));
      }
      
      public function get totalItemCount() : Number
      {
         return this.§-"-§;
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
            throw new Error("Error in parsing server response. String \n\"" + String(data) + "\"\n is not valid JSON.",§<"M§.§"c§);
         }
         return dataObj;
      }
      
      public function get data() : Array
      {
         return this.§,6§;
      }
      
      public function get isLoading() : Boolean
      {
         return this.§8X§ != null;
      }
      
      protected function §""I§(param1:§ v§) : void
      {
         param1.§0§.addEventListener(Event.COMPLETE,this.§0"=§);
         param1.§0§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§0§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§0§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§0§.addEventListener(§,"l§.§18§,dispatchEvent);
      }
      
      protected function §-"l§(param1:§ v§) : void
      {
         param1.§0§.removeEventListener(Event.COMPLETE,this.§0"=§);
         param1.§0§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§0§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§0§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§0§.removeEventListener(§,"l§.§18§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§8X§)
         {
            this.§-"l§(this.§8X§);
            try
            {
               this.§8X§.§0§.close();
            }
            catch(e:Error)
            {
            }
            this.§8X§ = null;
         }
      }
   }
}
