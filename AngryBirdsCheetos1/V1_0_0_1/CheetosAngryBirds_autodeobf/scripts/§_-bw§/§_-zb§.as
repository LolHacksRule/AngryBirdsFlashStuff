package §_-bw§
{
   import §_-FK§.§_-sd§;
   import flash.events.EventDispatcher;
   
   public class §_-zb§ extends EventDispatcher
   {
      
      private static var §_-z8§:§_-sd§;
      
      private static var §_-N8§:Array;
      
      private static var §_-o0§:int = 1;
      
      private static var §_-ZS§:int = 0;
      
      private static var §_-ZM§:String;
      
      private static var §_-bf§:Object;
      
      private static var §_-Hq§:String;
      
      private static var §_-rX§:Boolean;
      
      private static var §_-2E§:String;
       
      
      public function §_-zb§()
      {
         super();
      }
      
      public static function get hasWonPrize() : Boolean
      {
         return §_-rX§;
      }
      
      public static function set hasWonPrize(param1:Boolean) : void
      {
         §_-rX§ = param1;
      }
      
      public static function get userPrizeId() : String
      {
         return §_-2E§;
      }
      
      public static function set userPrizeId(param1:String) : void
      {
         §_-2E§ = param1;
      }
      
      public static function get §_-Xg§() : String
      {
         return §_-Hq§;
      }
      
      public static function set §_-Xg§(param1:String) : void
      {
         §_-Hq§ = param1;
      }
      
      public static function get userLevelId() : Object
      {
         return §_-bf§;
      }
      
      public static function set userLevelId(param1:Object) : void
      {
         §_-bf§ = param1;
      }
      
      public static function get §_-MA§() : String
      {
         return §_-ZM§;
      }
      
      public static function set §_-MA§(param1:String) : void
      {
         §_-ZM§ = param1;
      }
      
      public static function get §_-0Y§() : §_-sd§
      {
         return §_-z8§;
      }
      
      public static function set §_-0Y§(param1:§_-sd§) : void
      {
         §_-z8§ = param1;
      }
      
      public static function get credits() : int
      {
         return §_-ZS§;
      }
      
      public static function set credits(param1:int) : void
      {
         §_-ZS§ = param1;
      }
      
      public static function get §_-ik§() : Object
      {
         return {
            "id":§_-z8§.§_-PG§,
            "nickName":§_-z8§.name,
            "security":§_-z8§.§_-6J§
         };
      }
      
      public static function get §_-Ld§() : int
      {
         return §_-o0§;
      }
      
      public static function set §_-Ld§(param1:int) : void
      {
         §_-o0§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §_-N8§ = param1;
         for each(_loc2_ in param1)
         {
            §_-Vc§.§_-3K§.§false§(_loc2_.levelID,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §_-N8§;
      }
      
      public static function §_-6r§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in levelProfile)
         {
            if(_loc2_.levelID == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §_-E8§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §_-6r§(param1);
         if(_loc3_ != null)
         {
            if(_loc3_.unlocked)
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
      
      public static function §_-0-U§(param1:String) : void
      {
         var _loc2_:Object = §_-6r§(param1);
         if(_loc2_ != null)
         {
            _loc2_.unlocked = true;
         }
      }
   }
}
