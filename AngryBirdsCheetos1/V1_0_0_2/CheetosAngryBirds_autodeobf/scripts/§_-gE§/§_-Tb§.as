package §_-gE§
{
   import §_-yU§.§_-0p§;
   import flash.events.EventDispatcher;
   
   public class §_-Tb§ extends EventDispatcher
   {
      
      private static var §_-Lc§:§_-0p§;
      
      private static var §_-xu§:Array;
      
      private static var §_-6t§:int = 1;
      
      private static var §_-iw§:int = 0;
      
      private static var §_-o3§:String;
      
      private static var §_-y2§:Object;
      
      private static var §_-l3§:String;
      
      private static var §_-Jf§:Boolean;
      
      private static var §_-TG§:String;
       
      
      public function §_-Tb§()
      {
         super();
      }
      
      public static function get hasWonPrize() : Boolean
      {
         return §_-Jf§;
      }
      
      public static function set hasWonPrize(param1:Boolean) : void
      {
         §_-Jf§ = param1;
      }
      
      public static function get userPrizeId() : String
      {
         return §_-TG§;
      }
      
      public static function set userPrizeId(param1:String) : void
      {
         §_-TG§ = param1;
      }
      
      public static function get §_-MR§() : String
      {
         return §_-l3§;
      }
      
      public static function set §_-MR§(param1:String) : void
      {
         §_-l3§ = param1;
      }
      
      public static function get userLevelId() : Object
      {
         return §_-y2§;
      }
      
      public static function set userLevelId(param1:Object) : void
      {
         §_-y2§ = param1;
      }
      
      public static function get §_-gj§() : String
      {
         return §_-o3§;
      }
      
      public static function set §_-gj§(param1:String) : void
      {
         §_-o3§ = param1;
      }
      
      public static function get §_-Bw§() : §_-0p§
      {
         return §_-Lc§;
      }
      
      public static function set §_-Bw§(param1:§_-0p§) : void
      {
         §_-Lc§ = param1;
      }
      
      public static function get credits() : int
      {
         return §_-iw§;
      }
      
      public static function set credits(param1:int) : void
      {
         §_-iw§ = param1;
      }
      
      public static function get §_-P4§() : Object
      {
         return {
            "id":§_-Lc§.§_-2o§,
            "nickName":§_-Lc§.name,
            "security":§_-Lc§.§_-y5§
         };
      }
      
      public static function get §_-no§() : int
      {
         return §_-6t§;
      }
      
      public static function set §_-no§(param1:int) : void
      {
         §_-6t§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §_-xu§ = param1;
         for each(_loc2_ in param1)
         {
            §_-rs§.§_-Nr§.§_-Xq§(_loc2_.levelID,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §_-xu§;
      }
      
      public static function §_-mw§(param1:String) : Object
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
      
      public static function §_-QK§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §_-mw§(param1);
         if(_loc3_ != null)
         {
            if(_loc3_.unlocked)
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
      
      public static function §_-uJ§(param1:String) : void
      {
         var _loc2_:Object = §_-mw§(param1);
         if(_loc2_ != null)
         {
            _loc2_.unlocked = true;
         }
      }
   }
}
