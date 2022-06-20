package §7#$§
{
   import §]§.§!=§;
   
   public class §8$%§ extends §]#q§
   {
      
      private static var § "Q§:String = null;
      
      private static var §`T§:String = null;
       
      
      public function §8$%§()
      {
         super();
      }
      
      public static function get §^"l§() : String
      {
         return § "Q§;
      }
      
      public static function set §^"l§(param1:String) : void
      {
         § "Q§ = param1;
      }
      
      public function §0"<§(param1:String) : String
      {
         var episode:§3!,§ = null;
         var levelNumber:int = 0;
         var levelId:String = param1;
         try
         {
            episode = this.getEpisodeForLevel(levelId);
            levelNumber = episode.§]! §(levelId) + 1;
            return levelNumber.toString();
         }
         catch(e:Error)
         {
            return levelId;
         }
      }
      
      override protected function createEpisodeModelFromData(param1:Object) : §3!,§
      {
         var _loc2_:§3!,§ = super.createEpisodeModelFromData(param1);
         if(param1.name == §!=§.§^;§)
         {
            _loc2_.isTournament = true;
         }
         return _loc2_;
      }
      
      public function §4$,§() : Boolean
      {
         return getCurrentEpisodeModel().isTournament;
      }
      
      public function set previousLevel(param1:String) : void
      {
         §'#P§ = param1;
      }
      
      override public function getEpisodeForLevel(param1:String) : §3!,§
      {
         if(param1.indexOf(§!=§.§^;§) != -1)
         {
            return getEpisodeByName(§!=§.§^;§);
         }
         return super.getEpisodeForLevel(param1);
      }
      
      public function §0$!§() : Boolean
      {
         return currentEpisode == 6;
      }
   }
}
