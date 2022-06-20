package §[G§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import § $%§.§]e§;
   import §@!n§.§0!L§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   
   public class §1!0§ extends EventDispatcher
   {
       
      
      protected var §]!$§:Array;
      
      protected var §5b§:String;
      
      protected var §,#R§:String;
      
      protected var §>"6§:Number = -1;
      
      protected var §=##§:§-L§;
      
      protected var §`!u§:Vector.<§-L§>;
      
      public function §1!0§(param1:String)
      {
         this.§]!$§ = [];
         this.§`!u§ = new Vector.<§-L§>(0);
         super();
         this.§5b§ = param1;
      }
      
      public function loadItems(param1:int, param2:int) : void
      {
         var _loc3_:URLRequest = §%#9§.§`#<§(this.§5b§);
         _loc3_.method = this.§,#R§;
         _loc3_.contentType = "application/json";
         if(this.§,#R§ == URLRequestMethod.POST)
         {
            _loc3_.data = JSON.stringify({"count":param2});
         }
         var _loc4_:§4"v§;
         (_loc4_ = new §4"v§()).dataFormat = URLLoaderDataFormat.TEXT;
         var _loc5_:§-L§ = new §-L§(param1,param2,_loc4_,_loc3_);
         this.§?$&§(_loc5_);
         this.§`!u§.unshift(_loc5_);
         if(!this.§=##§)
         {
            this.§^X§();
         }
      }
      
      protected function §^X§() : void
      {
         if(this.§=##§ || this.§`!u§.length == 0)
         {
            return;
         }
         this.§=##§ = this.§`!u§.pop();
         this.§=##§.§9#s§.load(this.§=##§.§5$3§);
      }
      
      protected function onUrlLoaderComplete(param1:Event) : void
      {
         var _loc2_:Object = this.§-$3§(this.§=##§.§9#s§.data);
         this.dataLoaded(_loc2_);
      }
      
      protected function dataLoaded(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < (param1.players as Array).length)
         {
            this.§]!$§[this.§=##§.§;M§ + _loc2_] = param1.players[_loc2_];
            _loc2_++;
         }
         if(param1.totalItemCount != this.§>"6§)
         {
            this.§>"6§ = param1.totalItemCount;
            dispatchEvent(new §0!L§(§0!L§.§,!L§,this.§>"6§,this.§>"6§));
         }
         dispatchEvent(new §0!L§(§0!L§.§@>§,this.§=##§.§;M§,this.§=##§.§@!F§));
         this.§?x§(this.§=##§);
         this.§=##§ = null;
         if(this.§`!u§.length > 0)
         {
            this.§^X§();
         }
      }
      
      public function get totalItemCount() : Number
      {
         return this.§>"6§;
      }
      
      protected function §-$3§(param1:Object) : Object
      {
         return param1;
      }
      
      public function get data() : Array
      {
         return this.§]!$§;
      }
      
      public function get §"$1§() : Boolean
      {
         return this.§=##§ != null;
      }
      
      protected function §?$&§(param1:§-L§) : void
      {
         param1.§9#s§.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§9#s§.addEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§9#s§.addEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§9#s§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§9#s§.addEventListener(§]e§.§5!;§,dispatchEvent);
      }
      
      protected function §?x§(param1:§-L§) : void
      {
         param1.§9#s§.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         param1.§9#s§.removeEventListener(ProgressEvent.PROGRESS,dispatchEvent);
         param1.§9#s§.removeEventListener(IOErrorEvent.IO_ERROR,dispatchEvent);
         param1.§9#s§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,dispatchEvent);
         param1.§9#s§.removeEventListener(§]e§.§5!;§,dispatchEvent);
      }
      
      public function dispose() : void
      {
         if(this.§=##§)
         {
            this.§?x§(this.§=##§);
            try
            {
               this.§=##§.§9#s§.close();
            }
            catch(e:Error)
            {
            }
            this.§=##§ = null;
         }
      }
   }
}
