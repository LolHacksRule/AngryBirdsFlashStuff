package §3o§
{
   import §]B§.§!!3§;
   import flash.events.EventDispatcher;
   
   public class §;!=§ extends EventDispatcher
   {
      
      private static var §'e§:§!!3§;
      
      private static var §5i§:Array;
      
      private static var §^!W§:int = 1;
      
      private static var §-n§:int = 0;
      
      private static var §=!X§:String;
      
      private static var §-!4§:Object;
      
      private static var §;!-§:String;
      
      private static var §+!,§:Boolean;
      
      private static var §">§:String;
       
      
      public function §;!=§()
      {
         super();
      }
      
      public static function get hasWonPrize() : Boolean
      {
         return §+!,§;
      }
      
      public static function set hasWonPrize(param1:Boolean) : void
      {
         §+!,§ = param1;
      }
      
      public static function get userPrizeId() : String
      {
         return §">§;
      }
      
      public static function set userPrizeId(param1:String) : void
      {
         §">§ = param1;
      }
      
      public static function get §`S§() : String
      {
         return §;!-§;
      }
      
      public static function set §`S§(param1:String) : void
      {
         §;!-§ = param1;
      }
      
      public static function get userLevelId() : Object
      {
         return §-!4§;
      }
      
      public static function set userLevelId(param1:Object) : void
      {
         §-!4§ = param1;
      }
      
      public static function get §-j§() : String
      {
         return §=!X§;
      }
      
      public static function set §-j§(param1:String) : void
      {
         §=!X§ = param1;
      }
      
      public static function get §`!;§() : §!!3§
      {
         return §'e§;
      }
      
      public static function set §`!;§(param1:§!!3§) : void
      {
         §'e§ = param1;
      }
      
      public static function get credits() : int
      {
         return §-n§;
      }
      
      public static function set credits(param1:int) : void
      {
         §-n§ = param1;
      }
      
      public static function get §,%§() : Object
      {
         return {
            "id":§'e§.§each §,
            "nickName":§'e§.name,
            "security":§'e§.§7'§
         };
      }
      
      public static function get §,!0§() : int
      {
         return §^!W§;
      }
      
      public static function set §,!0§(param1:int) : void
      {
         §^!W§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §5i§ = param1;
         for each(_loc2_ in param1)
         {
            §,l§.§3!,§.§!I§(_loc2_.levelID,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §5i§;
      }
      
      public static function §"!'§(param1:String) : Object
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
      
      public static function §"v§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §"!'§(param1);
         if(_loc3_ != null)
         {
            if(_loc3_.unlocked)
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
      
      public static function §%j§(param1:String) : void
      {
         var _loc2_:Object = §"!'§(param1);
         if(_loc2_ != null)
         {
            _loc2_.unlocked = true;
         }
      }
   }
}
