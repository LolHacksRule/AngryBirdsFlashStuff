package §5"@§
{
   import flash.events.EventDispatcher;
   
   public class §1!N§ extends EventDispatcher
   {
      
      private static var §&1§:§!"'§;
      
      private static var §["8§:Array;
      
      private static var §7!a§:String;
      
      private static const §>c§:Array = [];
      
      private static var §&!x§:int = 1;
       
      
      public function §1!N§()
      {
         super();
      }
      
      public static function get §,!<§() : §!"'§
      {
         return §&1§;
      }
      
      public static function set §,!<§(param1:§!"'§) : void
      {
         §&1§ = param1;
      }
      
      public static function get §<!u§() : Object
      {
         return {
            "id":§&1§.id,
            "nickName":§&1§.name,
            "security":§&1§.§?"#§,
            "episodeScore1":§&1§.episodeScore1,
            "episodeScore2":§&1§.episodeScore2,
            "episodeScore3":§&1§.episodeScore3,
            "episodeStars1":§&1§.episodeStars1,
            "episodeStars2":§&1§.episodeStars2,
            "episodeStars3":§&1§.episodeStars3,
            "stars":§&1§.stars,
            "starsNeededToUnlockEpisode2":§&1§.starsNeededToUnlockEpisode2,
            "starsNeededToUnlockEpisode3":§&1§.starsNeededToUnlockEpisode3
         };
      }
      
      public static function get §",§() : int
      {
         return §&!x§;
      }
      
      public static function set §",§(param1:int) : void
      {
         §&!x§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §["8§ = param1;
      }
      
      public static function §]N§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §["8§)
         {
            (§2&§.§6o§ as §@T§).§'"5§.§1r§(_loc1_.levelId,_loc1_.bestScore);
            (§2&§.§6o§ as §@T§).§'"5§.§#D§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §["8§;
      }
      
      public static function §[!h§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §>c§)
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
      
      public static function §'!"§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §>c§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §8![§(param1:String) : Boolean
      {
         var _loc2_:Object = §[!h§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §7!a§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §7!a§ = param1;
      }
   }
}
