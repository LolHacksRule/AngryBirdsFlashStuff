package §4[§
{
   import flash.events.EventDispatcher;
   
   public class §2P§ extends EventDispatcher
   {
      
      private static var §6§:§<!o§;
      
      private static var §4y§:Array;
      
      private static var §=g§:String;
      
      private static const §=!h§:Array = [];
      
      private static var §5!S§:int = 1;
       
      
      public function §2P§()
      {
         super();
      }
      
      public static function get §[!$§() : §<!o§
      {
         return §6§;
      }
      
      public static function set §[!$§(param1:§<!o§) : void
      {
         §6§ = param1;
      }
      
      public static function get §8!e§() : Object
      {
         return {
            "id":§6§.id,
            "nickName":§6§.name,
            "security":§6§.§&"!§
         };
      }
      
      public static function get §&![§() : int
      {
         return §5!S§;
      }
      
      public static function set §&![§(param1:int) : void
      {
         §5!S§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §4y§ = param1;
      }
      
      public static function §-l§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §4y§)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.setScoreForLevel(_loc1_.levelId,_loc1_.bestScore);
            (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§9!k§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §4y§;
      }
      
      public static function §<!i§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §=!h§)
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
      
      public static function §@!i§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §=!h§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §0!a§(param1:String) : Boolean
      {
         var _loc2_:Object = §<!i§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §=g§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §=g§ = param1;
      }
   }
}
