package §^!0§
{
   import §4!1§.§'z§;
   import §5l§.§@!+§;
   import §8!#§.§6G§;
   import §>!1§.§>!A§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §0!2§
   {
      
      public static const §`l§:String = "InitialiseSession";
      
      public static const § k§:String = "GetActiveLevels";
      
      public static const §`<§:String = "GetActiveSpotPrize";
      
      public static const §8o§:String = "LevelStart";
      
      public static const §[!J§:String = "PurchasePowerUp";
      
      public static const §-!O§:String = "UseFreePlay";
      
      public static const §,!,§:String = "UpdateSpotPrizeWin";
      
      public static const §+I§:String = "LevelComplete";
      
      public static const §4W§:String = "RefreshSession";
      
      public static const §^!O§:String = "serializationJSON";
      
      public static const §0h§:String = "serializationURLParameters";
      
      private static const §4!9§:String = "32cc4dd7e526830db25794f997c305e82ea80dc5";
      
      private static const §2!K§:int = 500;
       
      
      public function §0!2§(param1:Object, param2:String, param3:§>!A§, param4:String)
      {
         super();
         var _loc5_:URLLoader = new URLLoader();
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §^!O§:
               _loc6_.contentType = "application/json";
               _loc6_.data = §@!+§.encode(param1);
               break;
            case §0h§:
               _loc6_.data = this.§;E§(param1);
         }
         _loc5_.addEventListener(Event.COMPLETE,param3.onComplete);
         _loc5_.addEventListener(HTTPStatusEvent.HTTP_STATUS,param3.onHttpStatus);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,param3.onIOError);
         _loc6_.url = param2;
         _loc5_.load(_loc6_);
      }
      
      public static function § !N§(param1:Object) : String
      {
         return §0!Z§(param1);
      }
      
      private static function §2!Q§(param1:*, param2:int = 0) : void
      {
         var _loc4_:* = null;
         for(_loc4_ in param1)
         {
            §2!Q§(param1[_loc4_],param2 + 1);
         }
      }
      
      public static function §0!Z§(param1:Object) : String
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc2_:Array = [];
         §2!Q§(param1);
         _loc2_.push(param1.levelId);
         _loc2_.push(param1.score + "");
         _loc2_.push(param1.sessionId);
         _loc2_.push(param1.userLevelId);
         _loc2_.push(param1.time);
         _loc2_.push(param1.stars);
         _loc2_.push(§4!9§);
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
            if(_loc10_ < §2!K§)
            {
               _loc9_ = §'z§.§1!Z§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§2!K§ < _loc2_.length)
         {
            _loc9_ = §'z§.§1!Z§(_loc8_ + _loc9_);
         }
         return _loc9_;
      }
      
      public static function §<M§(param1:String) : String
      {
         return §'z§.§1!Z§([param1,§6G§.§+J§.§0C§,§4!9§].join("|"));
      }
      
      public static function §>V§(param1:String, param2:Number, param3:Number) : String
      {
         return §7k§(param1,param2,param3);
      }
      
      public static function §7k§(param1:String, param2:Number, param3:Number) : String
      {
         var _loc4_:Array;
         (_loc4_ = []).push(param2);
         _loc4_.push(param3);
         _loc4_.push(§4!9§);
         _loc4_.push(§;!#§());
         _loc4_.push(param1);
         §2!Q§(_loc4_);
         var _loc5_:String = "";
         var _loc6_:String = "";
         var _loc7_:int = 0;
         while(_loc7_ < _loc4_.length)
         {
            _loc5_ += _loc4_[_loc7_];
            _loc6_ = §'z§.§1!Z§(_loc5_ + _loc6_);
            _loc7_++;
         }
         return _loc6_;
      }
      
      public static function §;!#§() : String
      {
         return §6G§.§<!W§ + "." + §0!2§.§<M§(§6G§.§<!W§);
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
      
      private function §;E§(param1:Object) : URLVariables
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
