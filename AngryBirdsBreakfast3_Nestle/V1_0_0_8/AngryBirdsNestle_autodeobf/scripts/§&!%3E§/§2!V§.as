package §&!>§
{
   import flash.events.EventDispatcher;
   
   public class §2!V§ extends EventDispatcher
   {
      
      private static var §8""§:§7!B§;
      
      private static var §7!6§:Array;
      
      private static var § "7§:String;
      
      private static const §@"-§:Array = [];
      
      private static var §4!T§:int = 1;
       
      
      public function §2!V§()
      {
         super();
      }
      
      public static function get §!!?§() : §7!B§
      {
         return §8""§;
      }
      
      public static function set §!!?§(param1:§7!B§) : void
      {
         §8""§ = param1;
      }
      
      public static function get §'!U§() : Object
      {
         return {
            "id":§8""§.id,
            "nickName":§8""§.name,
            "security":§8""§.§"Q§
         };
      }
      
      public static function get §>!6§() : int
      {
         return §4!T§;
      }
      
      public static function set §>!6§(param1:int) : void
      {
         §4!T§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §7!6§ = param1;
      }
      
      public static function §]n§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §7!6§)
         {
            (§-O§.§5!1§ as AngryBirdsCustom).§;!1§.setScoreForLevel(_loc1_.levelId,_loc1_.bestScore);
            (§-O§.§5!1§ as AngryBirdsCustom).§;!1§.§8g§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §7!6§;
      }
      
      public static function §>!"§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §@"-§)
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
      
      public static function §0!,§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §@"-§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §"L§(param1:String) : Boolean
      {
         var _loc2_:Object = §>!"§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return § "7§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         § "7§ = param1;
      }
   }
}
