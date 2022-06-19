package §_-kI§
{
   import §_-TG§.§_-up§;
   import flash.events.EventDispatcher;
   
   public class §_-Iv§ extends EventDispatcher
   {
      
      private static var §_-JI§:§_-up§;
      
      private static var §_-M-§:Array;
      
      private static var §_-M9§:int = 1;
      
      private static var §_-Us§:int = 0;
      
      private static var §_-Sa§:String;
      
      private static var §_-bJ§:Object;
      
      private static var §_-9o§:String;
      
      private static var §_-VM§:Boolean;
      
      private static var §_-dT§:String;
       
      
      public function §_-Iv§()
      {
         super();
      }
      
      public static function get hasWonPrize() : Boolean
      {
         return §_-VM§;
      }
      
      public static function set hasWonPrize(param1:Boolean) : void
      {
         §_-VM§ = param1;
      }
      
      public static function get userPrizeId() : String
      {
         return §_-dT§;
      }
      
      public static function set userPrizeId(param1:String) : void
      {
         §_-dT§ = param1;
      }
      
      public static function get §_-s0§() : String
      {
         return §_-9o§;
      }
      
      public static function set §_-s0§(param1:String) : void
      {
         §_-9o§ = param1;
      }
      
      public static function get userLevelId() : Object
      {
         return §_-bJ§;
      }
      
      public static function set userLevelId(param1:Object) : void
      {
         §_-bJ§ = param1;
      }
      
      public static function get §_-C1§() : String
      {
         return §_-Sa§;
      }
      
      public static function set §_-C1§(param1:String) : void
      {
         §_-Sa§ = param1;
      }
      
      public static function get §_-r5§() : §_-up§
      {
         return §_-JI§;
      }
      
      public static function set §_-r5§(param1:§_-up§) : void
      {
         §_-JI§ = param1;
      }
      
      public static function get credits() : int
      {
         return §_-Us§;
      }
      
      public static function set credits(param1:int) : void
      {
         §_-Us§ = param1;
      }
      
      public static function get §_-4x§() : Object
      {
         return {
            "id":§_-JI§.§_-Go§,
            "nickName":§_-JI§.name,
            "security":§_-JI§.§_-mN§
         };
      }
      
      public static function get §_-Lh§() : int
      {
         return §_-M9§;
      }
      
      public static function set §_-Lh§(param1:int) : void
      {
         §_-M9§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §_-M-§ = param1;
         for each(_loc2_ in param1)
         {
            §_-WX§.§_-ZR§.§_-9P§(_loc2_.levelID,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §_-M-§;
      }
      
      public static function §_-Xq§(param1:String) : Object
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
      
      public static function §_-uG§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §_-Xq§(param1);
         if(_loc3_ != null)
         {
            if(_loc3_.unlocked)
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
      
      public static function §_-wU§(param1:String) : void
      {
         var _loc2_:Object = §_-Xq§(param1);
         if(_loc2_ != null)
         {
            _loc2_.unlocked = true;
         }
      }
   }
}
