package §@#§
{
   import §94§.§'!!§;
   
   public class §`!Q§ extends §^#Q§
   {
      
      private static var §"#F§:String = null;
      
      private static var §+!L§:String = null;
       
      
      public function §`!Q§()
      {
         super();
      }
      
      public static function get §,#,§() : String
      {
         return §"#F§;
      }
      
      public static function set §,#,§(param1:String) : void
      {
         §"#F§ = param1;
      }
      
      public function §+#O§(param1:String) : String
      {
         var episode:§9##§ = null;
         var levelNumber:int = 0;
         var levelId:String = param1;
         try
         {
            episode = this.getEpisodeForLevel(levelId);
            levelNumber = episode.§"">§(levelId) + 1;
            return levelNumber.toString();
         }
         catch(e:Error)
         {
            return levelId;
         }
      }
      
      override protected function createEpisodeModelFromData(param1:Object) : §9##§
      {
         var _loc2_:§9##§ = super.createEpisodeModelFromData(param1);
         if(param1.name == §'!!§.§1!E§)
         {
            _loc2_.isTournament = true;
         }
         return _loc2_;
      }
      
      public function §-"9§() : Boolean
      {
         return getCurrentEpisodeModel().isTournament;
      }
      
      public function set previousLevel(param1:String) : void
      {
         §'#&§ = param1;
      }
      
      override public function getEpisodeForLevel(param1:String) : §9##§
      {
         if(param1.indexOf(§'!!§.§1!E§) != -1)
         {
            return getEpisodeByName(§'!!§.§1!E§);
         }
         return super.getEpisodeForLevel(param1);
      }
      
      public function §?"X§() : Boolean
      {
         return currentEpisode == 6;
      }
   }
}
