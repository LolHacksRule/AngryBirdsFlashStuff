package §?o§
{
   import §^1§.§ "g§;
   
   public class §?"m§ extends §4#?§
   {
      
      private static var §>!J§:String = null;
      
      private static var §?#S§:String = null;
       
      
      public function §?"m§()
      {
         super();
      }
      
      public static function get §<f§() : String
      {
         return §>!J§;
      }
      
      public static function set §<f§(param1:String) : void
      {
         §>!J§ = param1;
      }
      
      public function §&#W§(param1:String) : String
      {
         var episode:§79§ = null;
         var levelNumber:int = 0;
         var levelId:String = param1;
         try
         {
            episode = this.getEpisodeForLevel(levelId);
            levelNumber = episode.§9#D§(levelId) + 1;
            return levelNumber.toString();
         }
         catch(e:Error)
         {
            return levelId;
         }
      }
      
      override protected function createEpisodeModelFromData(param1:Object) : §79§
      {
         var _loc2_:§79§ = super.createEpisodeModelFromData(param1);
         if(param1.name == § "g§.§>#%§)
         {
            _loc2_.isTournament = true;
         }
         return _loc2_;
      }
      
      public function §0R§() : Boolean
      {
         return getCurrentEpisodeModel().isTournament;
      }
      
      public function set previousLevel(param1:String) : void
      {
         §4"<§ = param1;
      }
      
      override public function getEpisodeForLevel(param1:String) : §79§
      {
         if(param1.indexOf(§ "g§.§>#%§) != -1)
         {
            return getEpisodeByName(§ "g§.§>#%§);
         }
         return super.getEpisodeForLevel(param1);
      }
      
      public function § "$§() : Boolean
      {
         return currentEpisode == 6;
      }
   }
}
