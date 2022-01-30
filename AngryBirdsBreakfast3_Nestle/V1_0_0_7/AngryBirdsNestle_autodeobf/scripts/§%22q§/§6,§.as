package §"q§
{
   import flash.events.EventDispatcher;
   
   public class §6,§ extends EventDispatcher
   {
      
      private static var §-`§:§2!L§;
      
      private static var §]"0§:Array;
      
      private static var §=!]§:String;
      
      private static const §-!H§:Array = [];
      
      private static var § D§:int = 1;
       
      
      public function §6,§()
      {
         super();
      }
      
      public static function get §!!7§() : §2!L§
      {
         return §-`§;
      }
      
      public static function set §!!7§(param1:§2!L§) : void
      {
         §-`§ = param1;
      }
      
      public static function get §-Q§() : Object
      {
         return {
            "id":§-`§.id,
            "nickName":§-`§.name,
            "security":§-`§.§>!"§
         };
      }
      
      public static function get §9x§() : int
      {
         return § D§;
      }
      
      public static function set §9x§(param1:int) : void
      {
         § D§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §]"0§ = param1;
      }
      
      public static function §," §() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §]"0§)
         {
            (§,!X§.§>!G§ as AngryBirdsCustom).§<0§.setScoreForLevel(_loc1_.levelId,_loc1_.bestScore);
            (§,!X§.§>!G§ as AngryBirdsCustom).§<0§.§@"4§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §]"0§;
      }
      
      public static function §4!b§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §-!H§)
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
      
      public static function §',§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §-!H§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §1!`§(param1:String) : Boolean
      {
         var _loc2_:Object = §4!b§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §=!]§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §=!]§ = param1;
      }
   }
}
