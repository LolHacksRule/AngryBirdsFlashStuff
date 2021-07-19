package §7!B§
{
   import flash.events.EventDispatcher;
   
   public class §@!^§ extends EventDispatcher
   {
      
      private static var §^!o§:§?A§;
      
      private static var §6!1§:Array;
      
      private static var §5"<§:String;
      
      private static const §9!f§:Array = [];
      
      private static var §]5§:int = 1;
       
      
      public function §@!^§()
      {
         super();
      }
      
      public static function get §2j§() : §?A§
      {
         return §^!o§;
      }
      
      public static function set §2j§(param1:§?A§) : void
      {
         §^!o§ = param1;
      }
      
      public static function get §[!Q§() : Object
      {
         return {
            "id":§^!o§.id,
            "nickName":§^!o§.name,
            "security":§^!o§.§,!0§,
            "episodeScore1":§^!o§.episodeScore1,
            "episodeScore2":§^!o§.episodeScore2,
            "episodeScore3":§^!o§.episodeScore3,
            "episodeStars1":§^!o§.episodeStars1,
            "episodeStars2":§^!o§.episodeStars2,
            "episodeStars3":§^!o§.episodeStars3,
            "stars":§^!o§.stars,
            "starsNeededToUnlockEpisode2":§^!o§.starsNeededToUnlockEpisode2,
            "starsNeededToUnlockEpisode3":§^!o§.starsNeededToUnlockEpisode3
         };
      }
      
      public static function get §'"=§() : int
      {
         return §]5§;
      }
      
      public static function set §'"=§(param1:int) : void
      {
         §]5§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §6!1§ = param1;
      }
      
      public static function §;!Y§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §6!1§)
         {
            (§ !g§.§;!'§ as §`Y§).§]]§.§%P§(_loc1_.levelId,_loc1_.bestScore);
            (§ !g§.§;!'§ as §`Y§).§]]§.§4!e§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §6!1§;
      }
      
      public static function §<k§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §9!f§)
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
      
      public static function §5u§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §9!f§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §#^§(param1:String) : Boolean
      {
         var _loc2_:Object = §<k§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §5"<§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §5"<§ = param1;
      }
   }
}
