package §#"&§
{
   import § ^§.§`!2§;
   import §1!`§.§-!M§;
   import §;K§.§&s§;
   import §@!k§.§9!G§;
   import §]0§.§>I§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §#!4§
   {
      
      public static const § !z§:String = "serializationJSON";
      
      public static const §8$§:String = "serializationURLParameters";
      
      public static const §';§:String = "09sb85etmnspa89j3mx7han3689ngp9a";
      
      public static const §@!A§:String = "3v9a8crja089ph7st8oh7apr9cm8ja43";
      
      private static const § [§:String = "|";
      
      private static const §4o§:int = 500;
       
      
      private var §=B§:URLLoader;
      
      private var §3!H§:§>I§;
      
      private var §]c§:Boolean = false;
      
      public function §#!4§(param1:Object, param2:String, param3:§>I§, param4:String)
      {
         super();
         this.§=B§ = new §-!M§();
         this.§3!H§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§=B§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case § !z§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §&s§.encode(param1);
               break;
            case §8$§:
               _loc5_.data = this.§<!H§(param1);
         }
         this.§=B§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§=B§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§'!s§);
         this.§=B§.addEventListener(IOErrorEvent.IO_ERROR,this.§=o§);
         _loc5_.url = param2;
         this.§]c§ = false;
         this.§=B§.load(_loc5_);
      }
      
      public static function §"!R§(param1:Object) : String
      {
         return §9!G§.§3"%§([param1.levelId,param1.score,§`!2§.§!!$§.id,§';§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §^5§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §';§;
         return §9!G§.§3"%§(_loc2_);
      }
      
      public static function §6D§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §@!A§;
         _loc3_ = §9!G§.§3"%§(param1 + § [§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §9!G§.§3"%§(_loc3_ + § [§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §'!q§(param1:Object) : String
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
         _loc2_.push(param1.stars + "");
         _loc2_.push(§';§);
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
            if(_loc10_ <= §4o§)
            {
               _loc9_ = §9!G§.§3"%§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§4o§ < _loc2_.length)
         {
            _loc9_ = §9!G§.§3"%§(_loc8_ + _loc9_);
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
      
      public static function §9!7§(param1:String, param2:int, param3:int, param4:String) : String
      {
         var _loc5_:String = §';§;
         var _loc6_:String = (_loc6_ = (_loc6_ = (_loc6_ = "") + _loc5_) + § [§) + param2;
         _loc5_ = §9!G§.§3"%§(_loc6_);
         _loc6_ = (_loc6_ = (_loc6_ += _loc5_) + § [§) + param3;
         _loc5_ = §9!G§.§3"%§(_loc6_);
         _loc6_ = (_loc6_ = (_loc6_ += _loc5_) + § [§) + param4;
         _loc5_ = §9!G§.§3"%§(_loc6_);
         _loc6_ = (_loc6_ += _loc5_) + param1;
         _loc5_ = §9!G§.§3"%§(_loc6_);
         return _loc6_.length > 0 ? _loc5_ : null;
      }
      
      public function get §-I§() : Boolean
      {
         return this.§]c§;
      }
      
      private function §4!]§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§3!H§.onComplete(param1);
         this.§]c§ = true;
         this.removeEventListeners();
      }
      
      private function §'!s§(param1:HTTPStatusEvent) : void
      {
         this.§3!H§.§'!s§(param1);
      }
      
      private function §=o§(param1:IOErrorEvent) : void
      {
         this.§3!H§.§=o§(param1);
         this.removeEventListeners();
      }
      
      public function get §8!P§() : URLLoader
      {
         return this.§=B§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§=B§)
         {
            this.§=B§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§'!s§);
            this.§=B§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§=B§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=o§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§=B§)
         {
            this.§=B§.close();
            this.§=B§ = null;
         }
         if(this.§3!H§)
         {
            this.§3!H§ = null;
         }
      }
      
      private function §<!H§(param1:Object) : URLVariables
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
