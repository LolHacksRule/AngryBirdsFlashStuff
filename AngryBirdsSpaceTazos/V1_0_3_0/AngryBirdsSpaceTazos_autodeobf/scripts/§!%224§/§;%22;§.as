package §!"4§
{
   import flash.events.EventDispatcher;
   
   public class §;";§ extends EventDispatcher
   {
      
      private static var §9t§:§]a§;
      
      private static var §!!Y§:Array;
      
      private static var §7"G§:String;
      
      private static const §=!9§:Array = [];
      
      private static var §<"-§:int = 1;
       
      
      public function §;";§()
      {
         super();
      }
      
      public static function get §3U§() : §]a§
      {
         return §9t§;
      }
      
      public static function set §3U§(param1:§]a§) : void
      {
         §9t§ = param1;
      }
      
      public static function get §5!D§() : Object
      {
         return {
            "id":§9t§.id,
            "nickName":§9t§.name,
            "security":§9t§.§8Y§,
            "episodeScore1":§9t§.episodeScore1,
            "episodeScore2":§9t§.episodeScore2,
            "episodeScore3":§9t§.episodeScore3,
            "episodeStars1":§9t§.episodeStars1,
            "episodeStars2":§9t§.episodeStars2,
            "episodeStars3":§9t§.episodeStars3,
            "stars":§9t§.stars,
            "starsNeededToUnlockEpisode2":§9t§.starsNeededToUnlockEpisode2,
            "starsNeededToUnlockEpisode3":§9t§.starsNeededToUnlockEpisode3
         };
      }
      
      public static function get §6Y§() : int
      {
         return §<"-§;
      }
      
      public static function set §6Y§(param1:int) : void
      {
         §<"-§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §!!Y§ = param1;
      }
      
      public static function §#l§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §!!Y§)
         {
            (§&"<§.§<!7§ as §["!§).§<!%§.§0"3§(_loc1_.levelId,_loc1_.bestScore);
            (§&"<§.§<!7§ as §["!§).§<!%§.§>!`§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §!!Y§;
      }
      
      public static function §5o§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §=!9§)
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
      
      public static function §@!7§(param1:String) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in §=!9§)
         {
            if(_loc2_.levelId == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §9I§(param1:String) : Boolean
      {
         var _loc2_:Object = §5o§(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §7"G§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §7"G§ = param1;
      }
   }
}
