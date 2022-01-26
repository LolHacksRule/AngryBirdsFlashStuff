package §[p§
{
   import §&>§.§;[§;
   import flash.events.EventDispatcher;
   
   public class §"w§ extends EventDispatcher
   {
      
      private static var § each§:§;[§;
      
      private static var §=]§:Array;
      
      private static var §;!U§:int = 1;
      
      private static var §,!;§:int = 0;
      
      private static var §9k§:String;
      
      private static var §>a§:Object;
      
      private static var §>!Q§:String;
       
      
      public function §"w§()
      {
         super();
      }
      
      public static function get §2N§() : String
      {
         return §>!Q§;
      }
      
      public static function set §2N§(param1:String) : void
      {
         §>!Q§ = param1;
      }
      
      public static function get userLevelId() : Object
      {
         return §>a§;
      }
      
      public static function set userLevelId(param1:Object) : void
      {
         §>a§ = param1;
      }
      
      public static function get §98§() : String
      {
         return §9k§;
      }
      
      public static function set §98§(param1:String) : void
      {
         §9k§ = param1;
      }
      
      public static function get §2C§() : §;[§
      {
         return § each§;
      }
      
      public static function set §2C§(param1:§;[§) : void
      {
         § each§ = param1;
      }
      
      public static function get credits() : int
      {
         return §,!;§;
      }
      
      public static function set credits(param1:int) : void
      {
         §,!;§ = param1;
      }
      
      public static function get §@p§() : Object
      {
         return {
            "id":§ each§.§0m§,
            "nickName":§ each§.name,
            "security":§ each§.§+!'§
         };
      }
      
      public static function get §<!B§() : int
      {
         return §;!U§;
      }
      
      public static function set §<!B§(param1:int) : void
      {
         §;!U§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §=]§ = param1;
         for each(_loc2_ in param1)
         {
            §7d§.§4'§.§each §(_loc2_.levelID,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §=]§;
      }
      
      public static function §'y§(param1:String) : Object
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
      
      public static function §=!<§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §'y§(param1);
         if(_loc3_ != null)
         {
            if(_loc3_.unlocked)
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
      
      public static function §>!3§(param1:String) : Boolean
      {
         var _loc2_:Object = §'y§(param1);
         return _loc2_ != null;
      }
      
      public static function §1!P§(param1:String) : void
      {
         var _loc2_:Object = §'y§(param1);
         if(_loc2_ != null)
         {
            _loc2_.unlocked = true;
         }
      }
   }
}
