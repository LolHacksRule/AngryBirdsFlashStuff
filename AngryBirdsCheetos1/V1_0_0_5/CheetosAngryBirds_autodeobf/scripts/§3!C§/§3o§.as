package §3!C§
{
   import flash.events.EventDispatcher;
   import static.§]B§;
   
   public class §3o§ extends EventDispatcher
   {
      
      private static var §;!=§:§]B§;
      
      private static var §'e§:Array;
      
      private static var §5i§:int = 1;
      
      private static var §^!W§:int = 0;
      
      private static var §-n§:String;
      
      private static var §=!X§:Object;
      
      private static var §-!4§:String;
      
      private static var §;!-§:Boolean;
      
      private static var §+!,§:String;
       
      
      public function §3o§()
      {
         super();
      }
      
      public static function get hasWonPrize() : Boolean
      {
         return §;!-§;
      }
      
      public static function set hasWonPrize(param1:Boolean) : void
      {
         §;!-§ = param1;
      }
      
      public static function get userPrizeId() : String
      {
         return §+!,§;
      }
      
      public static function set userPrizeId(param1:String) : void
      {
         §+!,§ = param1;
      }
      
      public static function get §">§() : String
      {
         return §-!4§;
      }
      
      public static function set §">§(param1:String) : void
      {
         §-!4§ = param1;
      }
      
      public static function get userLevelId() : Object
      {
         return §=!X§;
      }
      
      public static function set userLevelId(param1:Object) : void
      {
         §=!X§ = param1;
      }
      
      public static function get §`S§() : String
      {
         return §-n§;
      }
      
      public static function set §`S§(param1:String) : void
      {
         §-n§ = param1;
      }
      
      public static function get §-j§() : §]B§
      {
         return §;!=§;
      }
      
      public static function set §-j§(param1:§]B§) : void
      {
         §;!=§ = param1;
      }
      
      public static function get credits() : int
      {
         return §^!W§;
      }
      
      public static function set credits(param1:int) : void
      {
         §^!W§ = param1;
      }
      
      public static function get §`!;§() : Object
      {
         return {
            "id":§;!=§.§7'§,
            "nickName":§;!=§.name,
            "security":§;!=§.§<! §
         };
      }
      
      public static function get §,%§() : int
      {
         return §5i§;
      }
      
      public static function set §,%§(param1:int) : void
      {
         §5i§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §'e§ = param1;
         for each(_loc2_ in param1)
         {
            §,l§.§3!,§.§!I§(_loc2_.levelID,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §'e§;
      }
      
      public static function §,!0§(param1:String) : Object
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
      
      public static function §"!'§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §,!0§(param1);
         if(_loc3_ != null)
         {
            if(_loc3_.unlocked)
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
      
      public static function §"v§(param1:String) : void
      {
         var _loc2_:Object = §,!0§(param1);
         if(_loc2_ != null)
         {
            _loc2_.unlocked = true;
         }
      }
   }
}
