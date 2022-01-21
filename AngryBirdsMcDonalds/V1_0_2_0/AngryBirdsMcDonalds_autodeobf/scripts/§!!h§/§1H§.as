package §!!h§
{
   import § v§.§!!^§;
   import §#!6§.§@!;§;
   import §09§.§[0§;
   import §7"§.§1! §;
   import §8r§.§8!c§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §1H§
   {
      
      public static const §`P§:String = "serializationJSON";
      
      public static const § !3§:String = "serializationURLParameters";
      
      public static const § $§:String = "qr83I4oYtK6jfH19s87cn8bm3B2hqh1x";
      
      public static const §-3§:String = "CV23tE28cxLBgZQ2s0LsMq5ZPsl2pzjN";
      
      private static const §%!B§:String = "|";
      
      private static const §05§:int = 500;
       
      
      private var §0f§:URLLoader;
      
      private var §[!Y§:§1! §;
      
      private var §1!R§:Boolean = false;
      
      public function §1H§(param1:Object, param2:String, param3:§1! §, param4:String)
      {
         super();
         this.§0f§ = new §[0§();
         this.§[!Y§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§0f§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §`P§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §8!c§.encode(param1);
               break;
            case § !3§:
               _loc5_.data = this.§!I§(param1);
         }
         this.§0f§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§0f§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§2!F§);
         this.§0f§.addEventListener(IOErrorEvent.IO_ERROR,this.§2!Z§);
         _loc5_.url = param2;
         this.§1!R§ = false;
         this.§0f§.load(_loc5_);
      }
      
      public static function §32§(param1:Object) : String
      {
         return §@!;§.§?!F§([param1.levelId,param1.score,§!!^§.§2n§.id,§ $§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §@!F§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += § $§;
         return §@!;§.§?!F§(_loc2_);
      }
      
      public static function § !X§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §-3§;
         _loc3_ = §@!;§.§?!F§(param1 + §%!B§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §@!;§.§?!F§(_loc3_ + §%!B§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §!8§(param1:Object) : String
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
         _loc2_.push(§ $§);
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
            if(_loc10_ < §05§)
            {
               _loc9_ = §@!;§.§?!F§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§05§ < _loc2_.length)
         {
            _loc9_ = §@!;§.§?!F§(_loc8_ + _loc9_);
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
      
      public function get §@!a§() : Boolean
      {
         return this.§1!R§;
      }
      
      private function §`!d§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§[!Y§.onComplete(param1);
         this.§1!R§ = true;
         this.removeEventListeners();
      }
      
      private function §2!F§(param1:HTTPStatusEvent) : void
      {
         this.§[!Y§.§2!F§(param1);
      }
      
      private function §2!Z§(param1:IOErrorEvent) : void
      {
         this.§[!Y§.§2!Z§(param1);
         this.removeEventListeners();
      }
      
      public function get §,S§() : URLLoader
      {
         return this.§0f§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§0f§)
         {
            this.§0f§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§2!F§);
            this.§0f§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§0f§.removeEventListener(IOErrorEvent.IO_ERROR,this.§2!Z§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§0f§)
         {
            this.§0f§.close();
            this.§0f§ = null;
         }
         if(this.§[!Y§)
         {
            this.§[!Y§ = null;
         }
      }
      
      private function §!I§(param1:Object) : URLVariables
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
