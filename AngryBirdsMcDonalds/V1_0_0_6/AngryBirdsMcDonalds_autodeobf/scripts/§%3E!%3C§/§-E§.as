package §>!<§
{
   import § !Z§.§ t§;
   import §1!A§.§=I§;
   import §7!Q§.§[!5§;
   import §<!b§.§2!c§;
   import §`!@§.§[!X§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §-E§
   {
      
      public static const §]!,§:String = "serializationJSON";
      
      public static const §4!f§:String = "serializationURLParameters";
      
      public static const §1q§:String = "qr83I4oYtK6jfH19s87cn8bm3B2hqh1x";
      
      public static const §0!I§:String = "CV23tE28cxLBgZQ2s0LsMq5ZPsl2pzjN";
      
      private static const §!!2§:String = "|";
      
      private static const §7o§:int = 500;
       
      
      private var §>8§:URLLoader;
      
      private var §=!k§:§[!X§;
      
      private var §=!!§:Boolean = false;
      
      public function §-E§(param1:Object, param2:String, param3:§[!X§, param4:String)
      {
         super();
         this.§>8§ = new § t§();
         this.§=!k§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§>8§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §]!,§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §2!c§.encode(param1);
               break;
            case §4!f§:
               _loc5_.data = this.§[!a§(param1);
         }
         this.§>8§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§>8§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§1k§);
         this.§>8§.addEventListener(IOErrorEvent.IO_ERROR,this.§&M§);
         _loc5_.url = param2;
         this.§=!!§ = false;
         this.§>8§.load(_loc5_);
      }
      
      public static function §1!K§(param1:Object) : String
      {
         return §=I§.§!3§([param1.levelId,param1.score,§[!5§.§[y§.id,§1q§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §%6§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §1q§;
         return §=I§.§!3§(_loc2_);
      }
      
      public static function §#!;§(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §0!I§;
         _loc3_ = §=I§.§!3§(param1 + §!!2§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §=I§.§!3§(_loc3_ + §!!2§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §[F§(param1:Object) : String
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
         _loc2_.push(§1q§);
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
            if(_loc10_ < §7o§)
            {
               _loc9_ = §=I§.§!3§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§7o§ < _loc2_.length)
         {
            _loc9_ = §=I§.§!3§(_loc8_ + _loc9_);
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
      
      public function get § k§() : Boolean
      {
         return this.§=!!§;
      }
      
      private function §"!1§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§=!k§.onComplete(param1);
         this.§=!!§ = true;
         this.removeEventListeners();
      }
      
      private function §1k§(param1:HTTPStatusEvent) : void
      {
         this.§=!k§.§1k§(param1);
      }
      
      private function §&M§(param1:IOErrorEvent) : void
      {
         this.§=!k§.§&M§(param1);
         this.removeEventListeners();
      }
      
      public function get §`!#§() : URLLoader
      {
         return this.§>8§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§>8§)
         {
            this.§>8§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§1k§);
            this.§>8§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§>8§.removeEventListener(IOErrorEvent.IO_ERROR,this.§&M§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§>8§)
         {
            this.§>8§.close();
            this.§>8§ = null;
         }
         if(this.§=!k§)
         {
            this.§=!k§ = null;
         }
      }
      
      private function §[!a§(param1:Object) : URLVariables
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
