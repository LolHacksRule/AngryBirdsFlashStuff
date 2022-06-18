package §4!F§
{
   import §!!7§.§@A§;
   import §#J§.§9^§;
   import §,J§.§'!C§;
   import §8O§.§'S§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §4m§
   {
      
      public static const §"!2§:String = "InitialiseSession";
      
      public static const §?!&§:String = "GetActiveLevels";
      
      public static const §%!Q§:String = "GetActiveSpotPrize";
      
      public static const §?!J§:String = "LevelStart";
      
      public static const §2!Z§:String = "PurchasePowerUp";
      
      public static const §&x§:String = "UseFreePlay";
      
      public static const §8!Y§:String = "UpdateSpotPrizeWin";
      
      public static const §3%§:String = "LevelComplete";
      
      public static const §&y§:String = "RefreshSession";
      
      public static const §5N§:String = "serializationJSON";
      
      public static const §2E§:String = "serializationURLParameters";
      
      private static const §?!Z§:String = "32cc4dd7e526830db25794f997c305e82ea80dc5";
      
      private static const §+f§:int = 500;
       
      
      public function §4m§(param1:Object, param2:String, param3:§9^§, param4:String)
      {
         super();
         var _loc5_:URLLoader = new URLLoader();
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §5N§:
               _loc6_.contentType = "application/json";
               _loc6_.data = §'!C§.encode(param1);
               break;
            case §2E§:
               _loc6_.data = this.§[%§(param1);
         }
         _loc5_.addEventListener(Event.COMPLETE,param3.onComplete);
         _loc5_.addEventListener(HTTPStatusEvent.HTTP_STATUS,param3.onHttpStatus);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,param3.onIOError);
         _loc6_.url = param2;
         _loc5_.load(_loc6_);
      }
      
      public static function §#![§(param1:Object) : String
      {
         return §9!P§(param1);
      }
      
      private static function §+t§(param1:*, param2:int = 0) : void
      {
         var _loc4_:* = null;
         for(_loc4_ in param1)
         {
            §+t§(param1[_loc4_],param2 + 1);
         }
      }
      
      public static function §9!P§(param1:Object) : String
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc2_:Array = [];
         §+t§(param1);
         _loc2_.push(param1.levelId);
         _loc2_.push(param1.score + "");
         _loc2_.push(param1.sessionId);
         _loc2_.push(param1.userLevelId);
         _loc2_.push(param1.time);
         _loc2_.push(param1.stars);
         _loc2_.push(§?!Z§);
         var _loc3_:String = param1.gameplay;
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
            if(_loc10_ < §+f§)
            {
               _loc9_ = §@A§.§@!2§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§+f§ < _loc2_.length)
         {
            _loc9_ = §@A§.§@!2§(_loc8_ + _loc9_);
         }
         return _loc9_;
      }
      
      public static function §@L§(param1:String) : String
      {
         return §@A§.§@!2§([param1,§'S§.§^!+§.§!X§,§?!Z§].join("|"));
      }
      
      public static function §'!N§(param1:String, param2:Number, param3:Number) : String
      {
         return §^!T§(param1,param2,param3);
      }
      
      public static function §^!T§(param1:String, param2:Number, param3:Number) : String
      {
         var _loc4_:Array;
         (_loc4_ = []).push(param2);
         _loc4_.push(param3);
         _loc4_.push(§?!Z§);
         _loc4_.push(§!J§());
         _loc4_.push(param1);
         §+t§(_loc4_);
         var _loc5_:String = "";
         var _loc6_:String = "";
         var _loc7_:int = 0;
         while(_loc7_ < _loc4_.length)
         {
            _loc5_ += _loc4_[_loc7_];
            _loc6_ = §@A§.§@!2§(_loc5_ + _loc6_);
            _loc7_++;
         }
         return _loc6_;
      }
      
      public static function §!J§() : String
      {
         return §'S§.§ !C§ + "." + §4m§.§@L§(§'S§.§ !C§);
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
      
      private function §[%§(param1:Object) : URLVariables
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
