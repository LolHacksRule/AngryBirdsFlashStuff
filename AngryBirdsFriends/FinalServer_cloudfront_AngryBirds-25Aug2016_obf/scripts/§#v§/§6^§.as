package §#v§
{
   import §,!=§.§=!-§;
   
   public class §6^§ extends §#!?§
   {
      
      private static var § "9§:String = null;
      
      private static var §'#P§:String = null;
       
      
      public function §6^§()
      {
         super();
      }
      
      public static function get §&!!§() : String
      {
         return § "9§;
      }
      
      public static function set §&!!§(param1:String) : void
      {
         § "9§ = param1;
      }
      
      public function §[!2§(param1:String) : String
      {
         var episode:§=!Z§ = null;
         var levelNumber:int = 0;
         var levelId:String = param1;
         try
         {
            episode = this.getEpisodeForLevel(levelId);
            levelNumber = episode.§ use§(levelId) + 1;
            return levelNumber.toString();
         }
         catch(e:Error)
         {
            return levelId;
         }
      }
      
      override protected function createEpisodeModelFromData(param1:Object) : §=!Z§
      {
         var _loc2_:§=!Z§ = super.createEpisodeModelFromData(param1);
         if(param1.name == §=!-§.§&!>§)
         {
            _loc2_.isTournament = true;
         }
         return _loc2_;
      }
      
      public function §4#H§() : Boolean
      {
         return getCurrentEpisodeModel().isTournament;
      }
      
      public function set previousLevel(param1:String) : void
      {
         §^_§ = param1;
      }
      
      override public function getEpisodeForLevel(param1:String) : §=!Z§
      {
         if(param1.indexOf(§=!-§.§&!>§) != -1)
         {
            return getEpisodeByName(§=!-§.§&!>§);
         }
         return super.getEpisodeForLevel(param1);
      }
      
      public function §=<§() : Boolean
      {
         return currentEpisode == 6;
      }
   }
}
