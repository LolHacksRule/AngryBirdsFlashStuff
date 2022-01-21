package §'Y§
{
   import § !1§.§[n§;
   import § L§.§>!M§;
   import §4!=§.§>H§;
   import §?H§.§>!!§;
   import §]!A§.§`3§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §6Q§
   {
      
      public static const §&!0§:String = "serializationJSON";
      
      public static const §9C§:String = "serializationURLParameters";
      
      public static const §[!i§:String = "qr83I4oYtK6jfH19s87cn8bm3B2hqh1x";
      
      public static const §^!f§:String = "CV23tE28cxLBgZQ2s0LsMq5ZPsl2pzjN";
      
      private static const §7!3§:String = "|";
      
      private static const §+!I§:int = 500;
       
      
      private var §;!O§:URLLoader;
      
      private var §&!;§:§[n§;
      
      private var §5§:Boolean = false;
      
      public function §6Q§(param1:Object, param2:String, param3:§[n§, param4:String)
      {
         super();
         this.§;!O§ = new §`3§();
         this.§&!;§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§;!O§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §&!0§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §>!M§.encode(param1);
               break;
            case §9C§:
               _loc5_.data = this.§0N§(param1);
         }
         this.§;!O§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§;!O§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§-_§);
         this.§;!O§.addEventListener(IOErrorEvent.IO_ERROR,this.§4!O§);
         _loc5_.url = param2;
         this.§5§ = false;
         this.§;!O§.load(_loc5_);
      }
      
      public static function §1k§(param1:Object) : String
      {
         return §>H§.§,!=§([param1.levelId,param1.score,§>!!§.§5M§.id,§[!i§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §9!_§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §[!i§;
         return §>H§.§,!=§(_loc2_);
      }
      
      public static function §+$§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §^!f§;
         _loc3_ = §>H§.§,!=§(param1 + §7!3§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §>H§.§,!=§(_loc3_ + §7!3§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §7!9§(param1:Object) : String
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
         _loc2_.push(§[!i§);
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
            if(_loc10_ < §+!I§)
            {
               _loc9_ = §>H§.§,!=§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§+!I§ < _loc2_.length)
         {
            _loc9_ = §>H§.§,!=§(_loc8_ + _loc9_);
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
      
      public function get § !F§() : Boolean
      {
         return this.§5§;
      }
      
      private function §#!A§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§&!;§.onComplete(param1);
         this.§5§ = true;
         this.removeEventListeners();
      }
      
      private function §-_§(param1:HTTPStatusEvent) : void
      {
         this.§&!;§.§-_§(param1);
      }
      
      private function §4!O§(param1:IOErrorEvent) : void
      {
         this.§&!;§.§4!O§(param1);
         this.removeEventListeners();
      }
      
      public function get §@!%§() : URLLoader
      {
         return this.§;!O§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§;!O§)
         {
            this.§;!O§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§-_§);
            this.§;!O§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§;!O§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4!O§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§;!O§)
         {
            this.§;!O§.close();
            this.§;!O§ = null;
         }
         if(this.§&!;§)
         {
            this.§&!;§ = null;
         }
      }
      
      private function §0N§(param1:Object) : URLVariables
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
