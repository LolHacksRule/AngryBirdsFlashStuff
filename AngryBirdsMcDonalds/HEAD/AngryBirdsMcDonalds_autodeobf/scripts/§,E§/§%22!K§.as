package §,E§
{
   import §%!H§.§<!_§;
   import §&6§.§`!T§;
   import §'x§.§=!4§;
   import §0$§.§!t§;
   import §=u§.§!!j§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §"!K§
   {
      
      public static const §<!4§:String = "serializationJSON";
      
      public static const §+!R§:String = "serializationURLParameters";
      
      public static const §0W§:String = "qr83I4oYtK6jfH19s87cn8bm3B2hqh1x";
      
      public static const §#3§:String = "CV23tE28cxLBgZQ2s0LsMq5ZPsl2pzjN";
      
      private static const §-!%§:String = "|";
      
      private static const §1+§:int = 500;
       
      
      private var §]!c§:URLLoader;
      
      private var §=!W§:§`!T§;
      
      private var §2!P§:Boolean = false;
      
      public function §"!K§(param1:Object, param2:String, param3:§`!T§, param4:String)
      {
         super();
         this.§]!c§ = new §!!j§();
         this.§=!W§ = param3;
         var _loc5_:URLRequest;
         (_loc5_ = new URLRequest()).method = URLRequestMethod.POST;
         this.§]!c§.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §<!4§:
               _loc5_.contentType = "application/json";
               _loc5_.data = §<!_§.encode(param1);
               break;
            case §+!R§:
               _loc5_.data = this.§!T§(param1);
         }
         this.§]!c§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§]!c§.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.§^!P§);
         this.§]!c§.addEventListener(IOErrorEvent.IO_ERROR,this.§'!d§);
         _loc5_.url = param2;
         this.§2!P§ = false;
         this.§]!c§.load(_loc5_);
      }
      
      public static function §<!q§(param1:Object) : String
      {
         return §=!4§.§#K§([param1.levelId,param1.score,§!t§.§[B§.id,§0W§,param1.blocks,param1.gamePlay].join("|"));
      }
      
      public static function §-!X§(param1:Array) : String
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         for each(_loc3_ in param1)
         {
            _loc2_ += _loc3_.levelId + "|";
         }
         _loc2_ += §0W§;
         return §=!4§.§#K§(_loc2_);
      }
      
      public static function § §(param1:String, param2:Array) : String
      {
         var _loc5_:Object = null;
         var _loc3_:String = §#3§;
         _loc3_ = §=!4§.§#K§(param1 + §-!%§ + _loc3_);
         var _loc4_:String = "";
         for each(_loc5_ in param2)
         {
            _loc4_ += _loc5_.type + _loc5_.count;
            _loc3_ = §=!4§.§#K§(_loc3_ + §-!%§ + _loc4_.toString());
         }
         return _loc3_;
      }
      
      public static function §@1§(param1:Object) : String
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
         _loc2_.push(§0W§);
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
            if(_loc10_ < §1+§)
            {
               _loc9_ = §=!4§.§#K§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§1+§ < _loc2_.length)
         {
            _loc9_ = §=!4§.§#K§(_loc8_ + _loc9_);
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
      
      public function get §<N§() : Boolean
      {
         return this.§2!P§;
      }
      
      private function §`!V§(param1:TimerEvent) : void
      {
         this.dispose();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§=!W§.onComplete(param1);
         this.§2!P§ = true;
         this.removeEventListeners();
      }
      
      private function §^!P§(param1:HTTPStatusEvent) : void
      {
         this.§=!W§.§^!P§(param1);
      }
      
      private function §'!d§(param1:IOErrorEvent) : void
      {
         this.§=!W§.§'!d§(param1);
         this.removeEventListeners();
      }
      
      public function get §'!O§() : URLLoader
      {
         return this.§]!c§;
      }
      
      private function removeEventListeners() : void
      {
         if(this.§]!c§)
         {
            this.§]!c§.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.§^!P§);
            this.§]!c§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§]!c§.removeEventListener(IOErrorEvent.IO_ERROR,this.§'!d§);
         }
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
         if(this.§]!c§)
         {
            this.§]!c§.close();
            this.§]!c§ = null;
         }
         if(this.§=!W§)
         {
            this.§=!W§ = null;
         }
      }
      
      private function §!T§(param1:Object) : URLVariables
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
