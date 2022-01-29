package §;$3§
{
   import §"!@§.§false§;
   
   public class §?!0§ extends §8=§
   {
      
      private static var §2#3§:String = null;
      
      private static var §'"5§:String = null;
       
      
      public function §?!0§()
      {
         super();
      }
      
      public static function get §0$-§() : String
      {
         return §2#3§;
      }
      
      public static function set §0$-§(param1:String) : void
      {
         §2#3§ = param1;
      }
      
      public function §7#J§(param1:String) : String
      {
         var episode:§"m§ = null;
         var levelNumber:int = 0;
         var levelId:String = param1;
         try
         {
            episode = this.getEpisodeForLevel(levelId);
            levelNumber = episode.§[#2§(levelId) + 1;
            return levelNumber.toString();
         }
         catch(e:Error)
         {
            return levelId;
         }
      }
      
      override protected function createEpisodeModelFromData(param1:Object) : §"m§
      {
         var _loc2_:§"m§ = super.createEpisodeModelFromData(param1);
         if(param1.name == §false§.§;#i§)
         {
            _loc2_.isTournament = true;
         }
         return _loc2_;
      }
      
      public function §[Y§() : Boolean
      {
         return getCurrentEpisodeModel().isTournament;
      }
      
      public function set previousLevel(param1:String) : void
      {
         §[#h§ = param1;
      }
      
      override public function getEpisodeForLevel(param1:String) : §"m§
      {
         if(param1.indexOf(§false§.§;#i§) != -1)
         {
            return getEpisodeByName(§false§.§;#i§);
         }
         return super.getEpisodeForLevel(param1);
      }
      
      public function §[!f§() : Boolean
      {
         return currentEpisode == 6;
      }
   }
}
