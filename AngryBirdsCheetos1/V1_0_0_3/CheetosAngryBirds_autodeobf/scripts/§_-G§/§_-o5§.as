package §_-G§
{
   import §_-DH§.§_-KR§;
   import §_-Nh§.§_-Gd§;
   import §_-Y7§.§_-Sg§;
   import §_-kI§.§_-Iv§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §_-o5§
   {
      
      public static const §_-a8§:String = "InitialiseSession";
      
      public static const §_-D7§:String = "GetActiveLevels";
      
      public static const §_-mv§:String = "GetActiveSpotPrize";
      
      public static const §_-Sl§:String = "LevelStart";
      
      public static const §_-x4§:String = "PurchasePowerUp";
      
      public static const §_-za§:String = "UseFreePlay";
      
      public static const §_-Mr§:String = "UpdateSpotPrizeWin";
      
      public static const §_-Jh§:String = "LevelComplete";
      
      public static const §_-B3§:String = "RefreshSession";
      
      public static const §_-oS§:String = "serializationJSON";
      
      public static const §_-JR§:String = "serializationURLParameters";
      
      private static var §_-yv§:Array = [110,120,105,57,107,111,112,65,118,112,48,73,121,88,78,76,118,55,113,83,51,56,119,115,57,49,76,56,90,75,121,49];
       
      
      public function §_-o5§(param1:Object, param2:String, param3:§_-Sg§, param4:String)
      {
         super();
         var _loc5_:URLLoader = new URLLoader();
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §_-oS§:
               _loc6_.contentType = "application/json";
               _loc6_.data = §_-KR§.encode(param1);
               break;
            case §_-JR§:
               _loc6_.data = this.§_-kh§(param1);
         }
         _loc5_.addEventListener(Event.COMPLETE,param3.onComplete);
         _loc5_.addEventListener(HTTPStatusEvent.HTTP_STATUS,param3.onHttpStatus);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,param3.onIOError);
         _loc6_.url = param2;
         _loc5_.load(_loc6_);
      }
      
      public static function §_-oN§(param1:Object) : String
      {
         return §_-Gd§.§_-sQ§([param1.sessionId,param1.userId,param1.levelId,param1.score,param1.blocks,getText(§_-yv§),param1.time,param1.numberOfBirdsShot,param1.gameplay,param1.userLevelId].join("|"));
      }
      
      public static function §_-Qh§(param1:String) : String
      {
         return §_-Gd§.§_-sQ§([param1,§_-Iv§.§_-r5§.§_-Go§,getText(§_-yv§)].join("|"));
      }
      
      public static function §_-Ye§(param1:String, param2:Number, param3:Number) : String
      {
         return §_-Gd§.§_-sQ§([param1,param2,param3,getText(§_-yv§)].join("|"));
      }
      
      public static function §_-YD§() : String
      {
         return §_-Iv§.§_-C1§ + "." + §_-o5§.§_-Qh§(§_-Iv§.§_-C1§);
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
      
      private function §_-kh§(param1:Object) : URLVariables
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
