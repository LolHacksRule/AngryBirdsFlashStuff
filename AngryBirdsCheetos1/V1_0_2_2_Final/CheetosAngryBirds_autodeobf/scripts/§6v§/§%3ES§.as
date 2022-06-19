package §6v§
{
   import §%s§.§;!5§;
   import §&p§.§9!H§;
   import §'!3§.§3n§;
   import §=A§.§5r§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §>S§
   {
      
      public static const §+Z§:String = "InitialiseSession";
      
      public static const §7!J§:String = "GetActiveLevels";
      
      public static const §-!U§:String = "GetActiveSpotPrize";
      
      public static const §%!K§:String = "LevelStart";
      
      public static const §[0§:String = "PurchasePowerUp";
      
      public static const §9d§:String = "UseFreePlay";
      
      public static const §=1§:String = "UpdateSpotPrizeWin";
      
      public static const §2I§:String = "LevelComplete";
      
      public static const §<!0§:String = "RefreshSession";
      
      public static const §"!H§:String = "serializationJSON";
      
      public static const §=q§:String = "serializationURLParameters";
      
      private static var §1!W§:Array = [110,120,105,57,107,111,112,65,118,112,48,73,121,88,78,76,118,55,113,83,51,56,119,115,57,49,76,56,90,75,121,49];
       
      
      public function §>S§(param1:Object, param2:String, param3:§3n§, param4:String)
      {
         super();
         var _loc5_:URLLoader = new URLLoader();
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §"!H§:
               _loc6_.contentType = "application/json";
               _loc6_.data = §5r§.encode(param1);
               break;
            case §=q§:
               _loc6_.data = this.§5M§(param1);
         }
         _loc5_.addEventListener(Event.COMPLETE,param3.onComplete);
         _loc5_.addEventListener(HTTPStatusEvent.HTTP_STATUS,param3.onHttpStatus);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,param3.onIOError);
         _loc6_.url = param2;
         _loc5_.load(_loc6_);
      }
      
      public static function § J§(param1:Object) : String
      {
         return §;!5§.§"!A§([param1.sessionId,param1.userId,param1.levelId,param1.score,param1.blocks,getText(§1!W§),param1.time,param1.numberOfBirdsShot,param1.gameplay,param1.userLevelId].join("|"));
      }
      
      public static function §9!^§(param1:String) : String
      {
         return §;!5§.§"!A§([param1,§9!H§.§ o§.§ I§,getText(§1!W§)].join("|"));
      }
      
      public static function §^g§(param1:String, param2:Number, param3:Number) : String
      {
         return §;!5§.§"!A§([param1,param2,param3,getText(§1!W§)].join("|"));
      }
      
      public static function §9J§() : String
      {
         return §9!H§.§<!7§ + "." + §>S§.§9!^§(§9!H§.§<!7§);
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
      
      private function §5M§(param1:Object) : URLVariables
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
