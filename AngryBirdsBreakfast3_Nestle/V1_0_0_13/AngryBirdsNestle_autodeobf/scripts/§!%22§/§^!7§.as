package §!"§
{
   import flash.events.EventDispatcher;
   
   public class §^!7§ extends EventDispatcher
   {
      
      private static var §""0§:§0"6§;
      
      private static var §?!M§:Array;
      
      private static var §@A§:String;
      
      private static const §%" §:Array = [];
      
      private static var § 3§:int = 1;
       
      
      public function §^!7§()
      {
         super();
      }
      
      public static function get §>!8§() : §0"6§
      {
         return §""0§;
      }
      
      public static function set §>!8§(param1:§0"6§) : void
      {
         §""0§ = param1;
      }
      
      public static function get §[!!§() : Object
      {
         return {
            "id":§""0§.id,
            "nickName":§""0§.name,
            "security":§""0§.§#!m§
         };
      }
      
      public static function get §4!Q§() : int
      {
         return § 3§;
      }
      
      public static function set §4!Q§(param1:int) : void
      {
         § 3§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §?!M§ = param1;
      }
      
      public static function §0!3§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §?!M§)
         {
            (§-!2§.§7O§ as AngryBirdsCustom).§,"5§.setScoreForLevel(_loc1_.levelId,_loc1_.bestScore);
            (§-!2§.§7O§ as AngryBirdsCustom).§,"5§.§=#§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §?!M§;
      }
      
      public static function §!"-§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §%" §)
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
      
      public static function §-!Z§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §%" §)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §#!,§(param1:String) : Boolean
      {
         var _loc2_:Object = §!"-§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §@A§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §@A§ = param1;
      }
   }
}
