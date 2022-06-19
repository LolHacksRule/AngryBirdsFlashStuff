package §_-05§
{
   import §_-YA§.§_-Q3§;
   import §_-bw§.§_-zb§;
   import §_-q1§.§_-LA§;
   import §_-zE§.§_-XJ§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class § do§
   {
      
      public static const §_-7i§:String = "InitialiseSession";
      
      public static const §_-eX§:String = "GetActiveLevels";
      
      public static const §_-Ko§:String = "GetActiveSpotPrize";
      
      public static const §_-uo§:String = "LevelStart";
      
      public static const §_-wA§:String = "PurchasePowerUp";
      
      public static const §_-Jd§:String = "UseFreePlay";
      
      public static const §_-h6§:String = "UpdateSpotPrizeWin";
      
      public static const §_-w9§:String = "LevelComplete";
      
      public static const §_-HC§:String = "RefreshSession";
      
      public static const §_-rq§:String = "serializationJSON";
      
      public static const §_-sP§:String = "serializationURLParameters";
      
      private static var §_-Jy§:Array = [110,120,105,57,107,111,112,65,118,112,48,73,121,88,78,76,118,55,113,83,51,56,119,115,57,49,76,56,90,75,121,49];
       
      
      public function § do§(param1:Object, param2:String, param3:§_-LA§, param4:String)
      {
         super();
         var _loc5_:URLLoader = new URLLoader();
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §_-rq§:
               _loc6_.contentType = "application/json";
               _loc6_.data = §_-XJ§.encode(param1);
               break;
            case §_-sP§:
               _loc6_.data = this.§_-D-§(param1);
         }
         _loc5_.addEventListener(Event.COMPLETE,param3.onComplete);
         _loc5_.addEventListener(HTTPStatusEvent.HTTP_STATUS,param3.onHttpStatus);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,param3.onIOError);
         _loc6_.url = param2;
         _loc5_.load(_loc6_);
      }
      
      public static function §_-30§(param1:Object) : String
      {
         return §_-Q3§.§_-Bk§([param1.sessionId,param1.userId,param1.levelId,param1.score,param1.blocks,getText(§_-Jy§),param1.time,param1.numberOfBirdsShot,param1.gameplay,param1.userLevelId].join("|"));
      }
      
      public static function §_-oN§(param1:String) : String
      {
         return §_-Q3§.§_-Bk§([param1,§_-zb§.§_-0Y§.§_-PG§,getText(§_-Jy§)].join("|"));
      }
      
      public static function §_-QU§(param1:String, param2:Number, param3:Number) : String
      {
         return §_-Q3§.§_-Bk§([param1,param2,param3,getText(§_-Jy§)].join("|"));
      }
      
      public static function §_-Ne§() : String
      {
         return §_-zb§.§_-MA§ + "." + § do§.§_-oN§(§_-zb§.§_-MA§);
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
      
      private function §_-D-§(param1:Object) : URLVariables
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
