package §=X§
{
   import flash.events.EventDispatcher;
   
   public class §3j§ extends EventDispatcher
   {
      
      private static var §@§:§?!n§;
      
      private static var §7!l§:Array;
      
      private static var §3!]§:String;
      
      private static const §else§:Array = [];
      
      private static var §^"$§:int = 1;
       
      
      public function §3j§()
      {
         super();
      }
      
      public static function get §0!i§() : §?!n§
      {
         return §@§;
      }
      
      public static function set §0!i§(param1:§?!n§) : void
      {
         §@§ = param1;
      }
      
      public static function get §2_§() : Object
      {
         return {
            "id":§@§.id,
            "nickName":§@§.name,
            "security":§@§.§?!f§
         };
      }
      
      public static function get §2^§() : int
      {
         return §^"$§;
      }
      
      public static function set §2^§(param1:int) : void
      {
         §^"$§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §7!l§ = param1;
      }
      
      public static function §'"'§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §7!l§)
         {
            (§&N§.§#Y§ as AngryBirdsCustom).§2Z§.setScoreForLevel(_loc1_.levelId,_loc1_.bestScore);
            (§&N§.§#Y§ as AngryBirdsCustom).§2Z§.§7$§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §7!l§;
      }
      
      public static function §6!5§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §else§)
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
      
      public static function §-"+§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §else§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §@z§(param1:String) : Boolean
      {
         var _loc2_:Object = §6!5§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §3!]§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §3!]§ = param1;
      }
   }
}
