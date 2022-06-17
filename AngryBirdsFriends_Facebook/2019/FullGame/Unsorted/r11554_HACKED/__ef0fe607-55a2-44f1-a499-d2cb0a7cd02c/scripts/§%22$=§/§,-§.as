package §"$=§
{
   import §3=§.§%"#§;
   
   public class §,-§ extends §'![§
   {
      
      private static var §]"L§:String = null;
      
      private static var § ##§:String = null;
       
      
      public function §,-§()
      {
         super();
      }
      
      public static function get §;!d§() : String
      {
         return §]"L§;
      }
      
      public static function set §;!d§(param1:String) : void
      {
         §]"L§ = param1;
      }
      
      public function §#6§(param1:String) : String
      {
         var episode:§[#5§ = null;
         var levelNumber:int = 0;
         var levelId:String = param1;
         try
         {
            episode = this.getEpisodeForLevel(levelId);
            levelNumber = episode.§!#d§(levelId) + 1;
            return levelNumber.toString();
         }
         catch(e:Error)
         {
            return levelId;
         }
      }
      
      override protected function createEpisodeModelFromData(param1:Object) : §[#5§
      {
         var _loc2_:§[#5§ = super.createEpisodeModelFromData(param1);
         if(param1.name == §%"#§.§4l§)
         {
            _loc2_.isTournament = true;
         }
         return _loc2_;
      }
      
      public function §"#,§() : Boolean
      {
         return getCurrentEpisodeModel().isTournament;
      }
      
      public function set previousLevel(param1:String) : void
      {
         §;#A§ = param1;
      }
      
      override public function getEpisodeForLevel(param1:String) : §[#5§
      {
         if(param1.indexOf(§%"#§.§4l§) != -1)
         {
            return getEpisodeByName(§%"#§.§4l§);
         }
         return super.getEpisodeForLevel(param1);
      }
      
      public function §88§() : Boolean
      {
         return currentEpisode == 6;
      }
   }
}
