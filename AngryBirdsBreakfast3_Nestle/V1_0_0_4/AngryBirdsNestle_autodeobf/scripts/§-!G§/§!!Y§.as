package §-!G§
{
   import flash.events.EventDispatcher;
   
   public class §!!Y§ extends EventDispatcher
   {
      
      private static var §5!#§:§"$§;
      
      private static var §6!^§:Array;
      
      private static var § !v§:String;
      
      private static const §7C§:Array = [];
      
      private static var §5!v§:int = 1;
       
      
      public function §!!Y§()
      {
         super();
      }
      
      public static function get §9!L§() : §"$§
      {
         return §5!#§;
      }
      
      public static function set §9!L§(param1:§"$§) : void
      {
         §5!#§ = param1;
      }
      
      public static function get §'S§() : Object
      {
         return {
            "id":§5!#§.id,
            "nickName":§5!#§.name,
            "security":§5!#§.§4!z§
         };
      }
      
      public static function get §3?§() : int
      {
         return §5!v§;
      }
      
      public static function set §3?§(param1:int) : void
      {
         §5!v§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §6!^§ = param1;
      }
      
      public static function §>!k§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §6!^§)
         {
            (§-!l§.§"x§ as AngryBirdsCustom).§7f§.setScoreForLevel(_loc1_.levelId,_loc1_.bestScore);
            (§-!l§.§"x§ as AngryBirdsCustom).§7f§.§9!U§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §6!^§;
      }
      
      public static function § !0§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §7C§)
         {
            if(_loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         for each(_loc2_ in levelProfile)
         {
            if(_loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §5!H§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §7C§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §5!=§(param1:String) : Boolean
      {
         var _loc2_:Object = § !0§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return § !v§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         § !v§ = param1;
      }
   }
}
