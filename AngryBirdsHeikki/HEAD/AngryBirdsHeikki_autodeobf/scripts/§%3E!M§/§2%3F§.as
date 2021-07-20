package §>!M§
{
   import §#%§.§70§;
   import §#r§.§'!0§;
   import §0!X§.§!!Z§;
   import §;$§.§]!T§;
   import §]!N§.§20§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §2?§
   {
      
      public static const §&!g§:String = "serializationJSON";
      
      public static const §`!%§:String = "serializationURLParameters";
      
      public static const §-!W§:String = "k8Lc1LQwgJncfdXwONoZUYd6vQM6gE8W";
      
      private static const §6!E§:int = 500;
       
      
      private var §8@§:URLLoader;
      
      private var §0!§:§!!Z§;
      
      private var §?'§:Boolean = false;
      
      public function §2?§(param1:Object, param2:String, param3:§!!Z§, param4:String)
      {
         super();
         this.§8@§ = new §]!T§();
         this.§0!§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§8@§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §&!g§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §20§.encode(param1);
               break;
            case §`!%§:
               _loc5_.data = this.§<D§(param1);
         }
         this.§8@§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§8@§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§;!Q§);
         this.§8@§.addEventListener(IOErrorEvent.IO_ERROR,this.§>!6§);
         _loc5_.url = param2;
         this.§?'§ = false;
         this.§8@§.load(_loc5_);
      }
      
      public static function §6,§(param1:Object) : String
      {
         return §'!0§.§14§([param1.levelId,param1.score,§70§.§>!_§.id,§-!W§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §`O§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §-!W§;
         return §'!0§.§14§(_loc2_);
      }
      
      public static function §@_§(param1:Object) : String
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc2_:Array = [];
         _loc2_.push(param1.levelId);
         _loc2_.push(param1.score + "");
         _loc2_.push(§-!W§);
         var _loc3_:String = param1.gamePlay;
         var _loc4_:Array = _loc3_.split(":");
         for each(_loc5_ in _loc4_)
         {
            _loc2_.push(_loc5_);
         }
         _loc2_.push(param1.userId);
         _loc7_ = (_loc6_ = param1.blocks).split(",");
         for each(_loc5_ in _loc7_)
         {
            _loc2_.push(_loc5_);
         }
         _loc8_ = "";
         _loc9_ = "";
         _loc10_ = 0;
         while(_loc10_ < _loc2_.length)
         {
            _loc8_ += _loc2_[_loc10_];
            if(_loc10_ < §6!E§)
            {
               _loc9_ = §'!0§.§14§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§6!E§ < _loc2_.length)
         {
            _loc9_ = §'!0§.§14§(_loc8_ + _loc9_);
         }
         return _loc9_;
      }
      
      private static function getText(param1:Array) : String
      {
         var _loc3_:int = 0;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += String.fromCharCode(_loc3_);
         }
         return _loc2_;
      }
      
      public function get §>!A§() : Boolean
      {
         return this.§?'§;
      }
      
      private function §[!H§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§0!§.onComplete(param1);
         this.§?'§ = true;
         this.removeEventListeners();
      }
      
      private function §;!Q§(param1:HTTPStatusEvent) : void
      {
         this.§0!§.§;!Q§(param1);
      }
      
      private function §>!6§(param1:IOErrorEvent) : void
      {
         this.§0!§.§>!6§(param1);
         this.removeEventListeners();
      }
      
      public function get §9G§() : URLLoader
      {
         return this.§8@§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§8@§)
         {
            this.§8@§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§;!Q§);
            this.§8@§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§8@§.removeEventListener(IOErrorEvent.IO_ERROR,this.§>!6§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§8@§)
         {
            this.§8@§.close();
            this.§8@§ = null;
         }
         if(this.§0!§)
         {
            this.§0!§ = null;
         }
      }
      
      private function §<D§(param1:Object) : URLVariables
      {
         var _loc3_:* = null;
         var _loc2_:URLVariables = new URLVariables();
         for(_loc3_ in param1)
         {
            _loc2_[_loc3_] = param1[_loc3_];
         }
         return _loc2_;
      }
   }
}
