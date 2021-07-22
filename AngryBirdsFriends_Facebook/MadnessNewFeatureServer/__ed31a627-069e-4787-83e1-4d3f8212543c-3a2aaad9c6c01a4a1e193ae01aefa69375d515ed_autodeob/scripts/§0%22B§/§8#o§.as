package §0"B§
{
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §1L§.§>5§;
   import §?!]§.§2#_§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §8#o§ extends EventDispatcher
   {
       
      
      protected var §8#f§:Array;
      
      protected var §,7§:String;
      
      protected var §]!v§:String;
      
      protected var § "H§:Number = -1;
      
      protected var §#!u§:§;!y§;
      
      protected var §]$>§:Vector.<§;!y§>;
      
      public function §8#o§(param1:String)
      {
         this.§8#f§ = [];
         this.§]$>§ = new Vector.<§;!y§>(0);
         super();
         this.§,7§ = param1;
      }
      
      public function loadItems(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §;#&§.§ #G§(this.§,7§);
         _loc3_.method = this.§]!v§;
         _loc3_.contentType = "application/json";
         if(this.§]!v§ == URLRequestMethod.POST)
         {
            _loc3_.data = JSON.stringify({"count":param2});
         }
         var _loc4_:§!!o§;
         (_loc4_ = new §!!o§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§;!y§ = new §;!y§(param1,param2,_loc4_,_loc3_);
         this.§>#M§(_loc5_);
         this.§]$>§.unshift(_loc5_);
         if(!this.§#!u§)
         {
            this.§]D§();
         }
      }
      
      protected function §]D§() : void
      {
         if(this.§#!u§ || this.§]$>§.length == 0)
         {
            return;
         }
         this.§#!u§ = this.§]$>§.pop();
         this.§#!u§.§3"!§.load(this.§#!u§.§]#Y§);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc2_:Object = this.§7"B§(this.§#!u§.§3"!§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.players as Array).length)
         {
            this.§8#f§[this.§#!u§.§ ]§ + _loc2_] = param1.players[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§ "H§)
         {
            this.§ "H§ = param1.totalItemCount;
            dispatchEvent(new §2#_§(§2#_§.§^$<§,this.§ "H§,this.§ "H§));
         }
         dispatchEvent(new §2#_§(§2#_§.§]"I§,this.§#!u§.§ ]§,this.§#!u§.§,!1§));
         this.§%#^§(this.§#!u§);
         this.§#!u§ = null;
         if(this.§]$>§.length > 0)
         {
            this.§]D§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§ "H§;
      }
      
      protected function §7"B§(param1:Object) : Object
      {
         return param1;
      }
      
      public function get data() : Array
      {
         return this.§8#f§;
      }
      
      public function get §6#J§() : Boolean
      {
         return this.§#!u§ != null;
      }
      
      protected function §>#M§(param1:§;!y§) : void
      {
         param1.§3"!§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§3"!§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§3"!§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§3"!§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§3"!§.addEventListener(§>5§.§@!@§,dispatchEvent);
      }
      
      protected function §%#^§(param1:§;!y§) : void
      {
         param1.§3"!§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§3"!§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§3"!§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§3"!§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§3"!§.removeEventListener(§>5§.§@!@§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§#!u§)
         {
            this.§%#^§(this.§#!u§);
            try
            {
               this.§#!u§.§3"!§.close();
            }
            catch(e:Error)
            {
            }
            this.§#!u§ = null;
         }
      }
   }
}
