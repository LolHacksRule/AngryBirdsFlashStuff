package §6"6§
{
   import flash.events.EventDispatcher;
   
   public class §40§ extends EventDispatcher
   {
      
      private static var §@E§:§1";§;
      
      private static var §&!>§:Array;
      
      private static var §@!S§:String;
      
      private static const §3T§:Array = [];
      
      private static var §"&§:int = 1;
       
      
      public function §40§()
      {
         super();
      }
      
      public static function get §1"$§() : §1";§
      {
         return §@E§;
      }
      
      public static function set §1"$§(param1:§1";§) : void
      {
         §@E§ = param1;
      }
      
      public static function get §9!7§() : Object
      {
         return {
            "id":§@E§.id,
            "nickName":§@E§.name,
            "security":§@E§.§5"8§,
            "episodeScore1":§@E§.episodeScore1,
            "episodeScore2":§@E§.episodeScore2,
            "episodeScore3":§@E§.episodeScore3,
            "episodeStars1":§@E§.episodeStars1,
            "episodeStars2":§@E§.episodeStars2,
            "episodeStars3":§@E§.episodeStars3,
            "stars":§@E§.stars,
            "starsNeededToUnlockEpisode2":§@E§.starsNeededToUnlockEpisode2,
            "starsNeededToUnlockEpisode3":§@E§.starsNeededToUnlockEpisode3
         };
      }
      
      public static function get § "A§() : int
      {
         return §"&§;
      }
      
      public static function set § "A§(param1:int) : void
      {
         §"&§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §&!>§ = param1;
      }
      
      public static function §3!f§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §&!>§)
         {
            (§&!h§.§ u§ as §^"=§).§^!7§.§!!q§(_loc1_.levelId,_loc1_.bestScore);
            (§&!h§.§ u§ as §^"=§).§^!7§.§8!A§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §&!>§;
      }
      
      public static function §6o§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §3T§)
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
      
      public static function §2`§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §3T§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §1!f§(param1:String) : Boolean
      {
         var _loc2_:Object = §6o§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §@!S§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §@!S§ = param1;
      }
   }
}
