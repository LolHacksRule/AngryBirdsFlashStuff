package §82§
{
   import §&d§.§!!O§;
   import §3!H§.§4q§;
   import §;!<§.§"$§;
   import §^!!§.§'!_§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §&A§
   {
      
      public static const §11§:String = "InitialiseSession";
      
      public static const §6!#§:String = "GetActiveLevels";
      
      public static const §@s§:String = "GetActiveSpotPrize";
      
      public static const §"o§:String = "LevelStart";
      
      public static const §"-§:String = "PurchasePowerUp";
      
      public static const §#t§:String = "UseFreePlay";
      
      public static const §?!U§:String = "UpdateSpotPrizeWin";
      
      public static const §3!D§:String = "LevelComplete";
      
      public static const §-A§:String = "RefreshSession";
      
      public static const §6!Q§:String = "serializationJSON";
      
      public static const §?!§:String = "serializationURLParameters";
      
      private static const §;o§:String = "32cc4dd7e526830db25794f997c305e82ea80dc5";
      
      private static const §3!C§:int = 500;
       
      
      public function §&A§(param1:Object, param2:String, param3:§"$§, param4:String)
      {
         super();
         var _loc5_:URLLoader = new URLLoader();
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §6!Q§:
               _loc6_.contentType = "application/json";
               _loc6_.data = §!!O§.encode(param1);
               break;
            case §?!§:
               _loc6_.data = this.§-!=§(param1);
         }
         _loc5_.addEventListener(Event.COMPLETE,param3.onComplete);
         _loc5_.addEventListener(HTTPStatusEvent.HTTP_STATUS,param3.onHttpStatus);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,param3.onIOError);
         _loc6_.url = param2;
         _loc5_.load(_loc6_);
      }
      
      public static function § !U§(param1:Object) : String
      {
         return §!d§(param1);
      }
      
      private static function §^!E§(param1:*, param2:int = 0) : void
      {
         var _loc4_:* = null;
         for(_loc4_ in param1)
         {
            §^!E§(param1[_loc4_],param2 + 1);
         }
      }
      
      public static function §!d§(param1:Object) : String
      {
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc2_:Array = [];
         §^!E§(param1);
         _loc2_.push(param1.levelId);
         _loc2_.push(param1.score + "");
         _loc2_.push(param1.sessionId);
         _loc2_.push(param1.userLevelId);
         _loc2_.push(param1.time);
         _loc2_.push(param1.stars);
         _loc2_.push(§;o§);
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
            if(_loc10_ < §3!C§)
            {
               _loc9_ = §4q§.§`,§(_loc8_ + _loc9_);
            }
            _loc10_++;
         }
         if(§3!C§ < _loc2_.length)
         {
            _loc9_ = §4q§.§`,§(_loc8_ + _loc9_);
         }
         return _loc9_;
      }
      
      public static function §,!E§(param1:String) : String
      {
         return §4q§.§`,§([param1,§'!_§.§=!"§.§^!F§,§;o§].join("|"));
      }
      
      public static function §8X§(param1:String, param2:Number, param3:Number) : String
      {
         return §-!5§(param1,param2,param3);
      }
      
      public static function §-!5§(param1:String, param2:Number, param3:Number) : String
      {
         var _loc4_:Array;
         (_loc4_ = []).push(param2);
         _loc4_.push(param3);
         _loc4_.push(§;o§);
         _loc4_.push(§?![§());
         _loc4_.push(param1);
         §^!E§(_loc4_);
         var _loc5_:String = "";
         var _loc6_:String = "";
         var _loc7_:int = 0;
         while(_loc7_ < _loc4_.length)
         {
            _loc5_ += _loc4_[_loc7_];
            _loc6_ = §4q§.§`,§(_loc5_ + _loc6_);
            _loc7_++;
         }
         return _loc6_;
      }
      
      public static function §?![§() : String
      {
         return §'!_§.§&C§ + "." + §&A§.§,!E§(§'!_§.§&C§);
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
      
      private function §-!=§(param1:Object) : URLVariables
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
