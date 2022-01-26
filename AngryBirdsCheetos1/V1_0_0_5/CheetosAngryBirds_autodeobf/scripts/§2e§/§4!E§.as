package §2e§
{
   import §&S§.§4!J§;
   import §,!D§.§5E§;
   import §0!>§.§-i§;
   import §3!C§.§3o§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §4!E§
   {
      
      public static const §!!I§:String = "InitialiseSession";
      
      public static const §4a§:String = "GetActiveLevels";
      
      public static const §>%§:String = "GetActiveSpotPrize";
      
      public static const §1!Q§:String = "LevelStart";
      
      public static const §9p§:String = "PurchasePowerUp";
      
      public static const §6Y§:String = "UseFreePlay";
      
      public static const §]!N§:String = "UpdateSpotPrizeWin";
      
      public static const §'!<§:String = "LevelComplete";
      
      public static const §""§:String = "RefreshSession";
      
      public static const §;4§:String = "serializationJSON";
      
      public static const § P§:String = "serializationURLParameters";
      
      private static var §,!8§:Array = [110,120,105,57,107,111,112,65,118,112,48,73,121,88,78,76,118,55,113,83,51,56,119,115,57,49,76,56,90,75,121,49];
       
      
      public function §4!E§(param1:Object, param2:String, param3:§-i§, param4:String)
      {
         super();
         var _loc5_:URLLoader = new URLLoader();
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §;4§:
               _loc6_.contentType = "application/json";
               _loc6_.data = §5E§.encode(param1);
               break;
            case § P§:
               _loc6_.data = this.§-!6§(param1);
         }
         _loc5_.addEventListener(Event.COMPLETE,param3.onComplete);
         _loc5_.addEventListener(HTTPStatusEvent.HTTP_STATUS,param3.onHttpStatus);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,param3.onIOError);
         _loc6_.url = param2;
         _loc5_.load(_loc6_);
      }
      
      public static function §-!X§(param1:Object) : String
      {
         return §4!J§.§^!3§([param1.sessionId,param1.userId,param1.levelId,param1.score,param1.blocks,getText(§,!8§),param1.time,param1.numberOfBirdsShot,param1.gameplay,param1.userLevelId].join("|"));
      }
      
      public static function §1,§(param1:String) : String
      {
         return §4!J§.§^!3§([param1,§3o§.§-j§.§7'§,getText(§,!8§)].join("|"));
      }
      
      public static function §2!>§(param1:String, param2:Number, param3:Number) : String
      {
         return §4!J§.§^!3§([param1,param2,param3,getText(§,!8§)].join("|"));
      }
      
      public static function §0E§() : String
      {
         return §3o§.§`S§ + "." + §4!E§.§1,§(§3o§.§`S§);
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
      
      private function §-!6§(param1:Object) : URLVariables
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
