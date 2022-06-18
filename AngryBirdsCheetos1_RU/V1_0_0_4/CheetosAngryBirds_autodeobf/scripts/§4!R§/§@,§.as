package §4!R§
{
   import §9!Z§.§0!1§;
   import flash.events.EventDispatcher;
   
   public class §@,§ extends EventDispatcher
   {
      
      private static var §?p§:§0!1§;
      
      private static var §4<§:Array;
      
      private static var §%!S§:int = 1;
      
      private static var §5E§:int = 0;
      
      private static var §1&§:String;
      
      private static var §-!L§:Object;
      
      private static var §]!,§:String;
       
      
      public function §@,§()
      {
         super();
      }
      
      public static function get §'!'§() : String
      {
         return §]!,§;
      }
      
      public static function set §'!'§(param1:String) : void
      {
         §]!,§ = param1;
      }
      
      public static function get userLevelId() : Object
      {
         return §-!L§;
      }
      
      public static function set userLevelId(param1:Object) : void
      {
         §-!L§ = param1;
      }
      
      public static function get §!l§() : String
      {
         return §1&§;
      }
      
      public static function set §!l§(param1:String) : void
      {
         §1&§ = param1;
      }
      
      public static function get §&!;§() : §0!1§
      {
         return §?p§;
      }
      
      public static function set §&!;§(param1:§0!1§) : void
      {
         §?p§ = param1;
      }
      
      public static function get credits() : int
      {
         return §5E§;
      }
      
      public static function set credits(param1:int) : void
      {
         §5E§ = param1;
      }
      
      public static function get §]!+§() : Object
      {
         return {
            "id":§?p§.§-%§,
            "nickName":§?p§.name,
            "security":§?p§.§3v§
         };
      }
      
      public static function get §@!<§() : int
      {
         return §%!S§;
      }
      
      public static function set §@!<§(param1:int) : void
      {
         §%!S§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §4<§ = param1;
         for each(_loc2_ in param1)
         {
            §4+§.§2!K§.§%!,§(_loc2_.levelID,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §4<§;
      }
      
      public static function §=!J§(param1:String) : Object
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
      
      public static function §?!,§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §=!J§(param1);
         if(_loc3_ != null)
         {
            if(_loc3_.unlocked)
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
      
      public static function §`n§(param1:String) : Boolean
      {
         var _loc2_:Object = §=!J§(param1);
         return _loc2_ != null;
      }
      
      public static function §,!B§(param1:String) : void
      {
         var _loc2_:Object = §=!J§(param1);
         if(_loc2_ != null)
         {
            _loc2_.unlocked = true;
         }
      }
   }
}
