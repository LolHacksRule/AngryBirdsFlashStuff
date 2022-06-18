package §2!Y§
{
   import §4S§.§+!p§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §7"X§.§6#A§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §5@§ extends EventDispatcher
   {
       
      
      protected var §1!,§:Array;
      
      protected var §!!b§:String;
      
      protected var §,!C§:String;
      
      protected var §[$=§:Number = -1;
      
      protected var §`!T§:§-N§;
      
      protected var §!B§:Vector.<§-N§>;
      
      public function §5@§(param1:String)
      {
         this.§1!,§ = [];
         this.§!B§ = new Vector.<§-N§>(0);
         super();
         this.§!!b§ = param1;
      }
      
      public function loadItems(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §?#l§.§2#=§(this.§!!b§);
         _loc3_.method = this.§,!C§;
         _loc3_.contentType = "application/json";
         if(this.§,!C§ == URLRequestMethod.POST)
         {
            _loc3_.data = JSON.stringify({"count":param2});
         }
         var _loc4_:§-$C§;
         (_loc4_ = new §-$C§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§-N§ = new §-N§(param1,param2,_loc4_,_loc3_);
         this.§6$<§(_loc5_);
         this.§!B§.unshift(_loc5_);
         if(!this.§`!T§)
         {
            this.§1"i§();
         }
      }
      
      protected function §1"i§() : void
      {
         if(this.§`!T§ || this.§!B§.length == 0)
         {
            return;
         }
         this.§`!T§ = this.§!B§.pop();
         this.§`!T§.§@!w§.load(this.§`!T§.§1A§);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc2_:Object = this.§;#z§(this.§`!T§.§@!w§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.players as Array).length)
         {
            this.§1!,§[this.§`!T§.§'0§ + _loc2_] = param1.players[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§[$=§)
         {
            this.§[$=§ = param1.totalItemCount;
            dispatchEvent(new §6#A§(§6#A§.§%i§,this.§[$=§,this.§[$=§));
         }
         dispatchEvent(new §6#A§(§6#A§.§4$&§,this.§`!T§.§'0§,this.§`!T§.§-"G§));
         this.§0!>§(this.§`!T§);
         this.§`!T§ = null;
         if(this.§!B§.length > 0)
         {
            this.§1"i§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§[$=§;
      }
      
      protected function §;#z§(param1:Object) : Object
      {
         return param1;
      }
      
      public function get data() : Array
      {
         return this.§1!,§;
      }
      
      public function get §9$$§() : Boolean
      {
         return this.§`!T§ != null;
      }
      
      protected function §6$<§(param1:§-N§) : void
      {
         param1.§@!w§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§@!w§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§@!w§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§@!w§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§@!w§.addEventListener(§+!p§.§2$9§,dispatchEvent);
      }
      
      protected function §0!>§(param1:§-N§) : void
      {
         param1.§@!w§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§@!w§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§@!w§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§@!w§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§@!w§.removeEventListener(§+!p§.§2$9§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§`!T§)
         {
            this.§0!>§(this.§`!T§);
            try
            {
               this.§`!T§.§@!w§.close();
            }
            catch(e:Error)
            {
            }
            this.§`!T§ = null;
         }
      }
   }
}
