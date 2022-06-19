package §_-l-§
{
   import §_-H4§.§_-m4§;
   import §_-Ul§.§_-u-§;
   import §_-gE§.§_-Tb§;
   import §_-rt§.§_-nm§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   
   public class §_-pI§
   {
      
      public static const §_-W0§:String = "InitialiseSession";
      
      public static const §_-0-N§:String = "GetActiveLevels";
      
      public static const §_-Hj§:String = "GetActiveSpotPrize";
      
      public static const §_-vl§:String = "LevelStart";
      
      public static const §_-g§:String = "PurchasePowerUp";
      
      public static const §_-Ur§:String = "UseFreePlay";
      
      public static const §_-7S§:String = "UpdateSpotPrizeWin";
      
      public static const §_-fD§:String = "LevelComplete";
      
      public static const §_-Yi§:String = "RefreshSession";
      
      public static const §package§:String = "serializationJSON";
      
      public static const §_-Q-§:String = "serializationURLParameters";
      
      private static var §_-ik§:Array = [110,120,105,57,107,111,112,65,118,112,48,73,121,88,78,76,118,55,113,83,51,56,119,115,57,49,76,56,90,75,121,49];
       
      
      public function §_-pI§(param1:Object, param2:String, param3:§_-u-§, param4:String)
      {
         super();
         var _loc5_:URLLoader = new URLLoader();
         var _loc6_:URLRequest;
         (_loc6_ = new URLRequest()).method = URLRequestMethod.POST;
         _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
         switch(param4)
         {
            case §package§:
               _loc6_.contentType = "application/json";
               _loc6_.data = §_-nm§.encode(param1);
               break;
            case §_-Q-§:
               _loc6_.data = this.§_-J7§(param1);
         }
         _loc5_.addEventListener(Event.COMPLETE,param3.onComplete);
         _loc5_.addEventListener(HTTPStatusEvent.HTTP_STATUS,param3.onHttpStatus);
         _loc5_.addEventListener(IOErrorEvent.IO_ERROR,param3.onIOError);
         _loc6_.url = param2;
         _loc5_.load(_loc6_);
      }
      
      public static function §_-km§(param1:Object) : String
      {
         return §_-m4§.§_-4g§([param1.sessionId,param1.userId,param1.levelId,param1.score,param1.blocks,getText(§_-ik§),param1.time,param1.numberOfBirdsShot,param1.gameplay,param1.userLevelId].join("|"));
      }
      
      public static function §_-Lv§(param1:String) : String
      {
         return §_-m4§.§_-4g§([param1,§_-Tb§.§_-Bw§.§_-2o§,getText(§_-ik§)].join("|"));
      }
      
      public static function §_-gV§(param1:String, param2:Number, param3:Number) : String
      {
         return §_-m4§.§_-4g§([param1,param2,param3,getText(§_-ik§)].join("|"));
      }
      
      public static function §_-o6§() : String
      {
         return §_-Tb§.§_-gj§ + "." + §_-pI§.§_-Lv§(§_-Tb§.§_-gj§);
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
      
      private function §_-J7§(param1:Object) : URLVariables
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
