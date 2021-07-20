package §,"v§
{
   import §2";§.§`"A§;
   
   public class §;#A§ extends §;"n§
   {
      
      private static var §;!F§:String = null;
      
      private static var §8!§:String = null;
       
      
      public function §;#A§()
      {
         super();
      }
      
      public static function get §;]§() : String
      {
         return §;!F§;
      }
      
      public static function set §;]§(param1:String) : void
      {
         §;!F§ = param1;
      }
      
      public function §`!-§(param1:String) : String
      {
         var episode:§ T§ = null;
         var levelNumber:int = 0;
         var levelId:String = param1;
         try
         {
            episode = this.getEpisodeForLevel(levelId);
            levelNumber = episode.§3!_§(levelId) + 1;
            return levelNumber.toString();
         }
         catch(e:Error)
         {
            return levelId;
         }
      }
      
      override protected function createEpisodeModelFromData(param1:Object) : § T§
      {
         var _loc2_:§ T§ = super.createEpisodeModelFromData(param1);
         if(param1.name == §`"A§.§1!5§)
         {
            _loc2_.isTournament = true;
         }
         return _loc2_;
      }
      
      public function §5"G§() : Boolean
      {
         return getCurrentEpisodeModel().isTournament;
      }
      
      public function set previousLevel(param1:String) : void
      {
         §4x§ = param1;
      }
      
      override public function getEpisodeForLevel(param1:String) : § T§
      {
         if(param1.indexOf(§`"A§.§1!5§) != -1)
         {
            return getEpisodeByName(§`"A§.§1!5§);
         }
         return super.getEpisodeForLevel(param1);
      }
      
      public function §[!0§() : Boolean
      {
         return currentEpisode == 6;
      }
   }
}
