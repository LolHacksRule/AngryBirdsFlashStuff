package §^i§
{
   import §1!a§.§7!I§;
   import §5i§.§<!I§;
   import §6Q§.§'!M§;
   import §;c§.§2b§;
   import §?!"§.§^!`§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §;§
   {
      
      public static const §@<§:String = "serializationJSON";
      
      public static const §]`§:String = "serializationURLParameters";
      
      public static const §4!_§:String = "k8Lc1LQwgJncfdXwONoZUYd6vQM6gE8W";
      
      private static const §?!%§:int = 500;
       
      
      private var §,!H§:URLLoader;
      
      private var §,b§:§7!I§;
      
      private var §5m§:Boolean = false;
      
      public function §;§(param1:Object, param2:String, param3:§7!I§, param4:String)
      {
         super();
         this.§,!H§ = new §2b§();
         this.§,b§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§,!H§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §@<§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §'!M§.encode(param1);
               break;
            case §]`§:
               _loc5_.data = this.§+g§(param1);
         }
         this.§,!H§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§,!H§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§4@§);
         this.§,!H§.addEventListener(IOErrorEvent.IO_ERROR,this.§<!3§);
         _loc5_.url = param2;
         this.§5m§ = false;
         this.§,!H§.load(_loc5_);
      }
      
      public static function §5!E§(param1:Object) : String
      {
         return §<!I§.§+!T§([param1.levelId,param1.score,§^!`§.§2?§.id,§4!_§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §>!G§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §4!_§;
         return §<!I§.§+!T§(_loc2_);
      }
      
      public static function §4c§(param1:Object) : String
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
         _loc2_.push(§4!_§);
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
            if(_loc10_ < §?!%§)
            {
               _loc9_ = §<!I§.§+!T§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§?!%§ < _loc2_.length)
         {
            _loc9_ = §<!I§.§+!T§(_loc8_ + _loc9_);
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
      
      public function get §'!$§() : Boolean
      {
         return this.§5m§;
      }
      
      private function §"j§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§,b§.onComplete(param1);
         this.§5m§ = true;
         this.removeEventListeners();
      }
      
      private function §4@§(param1:HTTPStatusEvent) : void
      {
         this.§,b§.§4@§(param1);
      }
      
      private function §<!3§(param1:IOErrorEvent) : void
      {
         this.§,b§.§<!3§(param1);
         this.removeEventListeners();
      }
      
      public function get §"g§() : URLLoader
      {
         return this.§,!H§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§,!H§)
         {
            this.§,!H§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§4@§);
            this.§,!H§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§,!H§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<!3§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§,!H§)
         {
            this.§,!H§.close();
            this.§,!H§ = null;
         }
         if(this.§,b§)
         {
            this.§,b§ = null;
         }
      }
      
      private function §+g§(param1:Object) : URLVariables
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
