package §1!^§
{
   import §#!8§.§]K§;
   import §7!N§.§0-§;
   import §7!X§.§1W§;
   import §<! §.§<<§;
   import §=!m§.§9V§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §,!n§
   {
      
      public static const §-I§:String = "serializationJSON";
      
      public static const §4!H§:String = "serializationURLParameters";
      
      public static const §8!J§:String = "qr83I4oYtK6jfH19s87cn8bm3B2hqh1x";
      
      public static const §+!6§:String = "CV23tE28cxLBgZQ2s0LsMq5ZPsl2pzjN";
      
      private static const §%Y§:String = "|";
      
      private static const §]!B§:int = 500;
       
      
      private var §"I§:URLLoader;
      
      private var §,i§:§<<§;
      
      private var §^§:Boolean = false;
      
      public function §,!n§(param1:Object, param2:String, param3:§<<§, param4:String)
      {
         super();
         this.§"I§ = new §9V§();
         this.§,i§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§"I§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §-I§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §]K§.encode(param1);
               break;
            case §4!H§:
               _loc5_.data = this.§4e§(param1);
         }
         this.§"I§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§"I§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§ !X§);
         this.§"I§.addEventListener(IOErrorEvent.IO_ERROR,this.§-;§);
         _loc5_.url = param2;
         this.§^§ = false;
         this.§"I§.load(_loc5_);
      }
      
      public static function §4'§(param1:Object) : String
      {
         return §1W§.§<%§([param1.levelId,param1.score,§0-§.§4!E§.id,§8!J§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §@j§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §8!J§;
         return §1W§.§<%§(_loc2_);
      }
      
      public static function §'u§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §+!6§;
         _loc3_ = §1W§.§<%§(param1 + §%Y§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §1W§.§<%§(_loc3_ + §%Y§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §<!X§(param1:Object) : String
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
         _loc2_.push(§8!J§);
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
            if(_loc10_ < §]!B§)
            {
               _loc9_ = §1W§.§<%§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§]!B§ < _loc2_.length)
         {
            _loc9_ = §1W§.§<%§(_loc8_ + _loc9_);
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
      
      public function get §7!O§() : Boolean
      {
         return this.§^§;
      }
      
      private function §!G§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§,i§.onComplete(param1);
         this.§^§ = true;
         this.removeEventListeners();
      }
      
      private function § !X§(param1:HTTPStatusEvent) : void
      {
         this.§,i§.§ !X§(param1);
      }
      
      private function §-;§(param1:IOErrorEvent) : void
      {
         this.§,i§.§-;§(param1);
         this.removeEventListeners();
      }
      
      public function get §2!G§() : URLLoader
      {
         return this.§"I§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§"I§)
         {
            this.§"I§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§ !X§);
            this.§"I§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§"I§.removeEventListener(IOErrorEvent.IO_ERROR,this.§-;§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§"I§)
         {
            this.§"I§.close();
            this.§"I§ = null;
         }
         if(this.§,i§)
         {
            this.§,i§ = null;
         }
      }
      
      private function §4e§(param1:Object) : URLVariables
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
