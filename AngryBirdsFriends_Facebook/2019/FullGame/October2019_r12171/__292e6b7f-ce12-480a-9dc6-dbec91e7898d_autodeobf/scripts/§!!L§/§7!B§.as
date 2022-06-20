package §!!L§
{
   import §+`§.§%"q§;
   import §7#$§.§]#q§;
   import §8$=§.§=$7§;
   import §]§.§#!$§;
   import §]§.§[#t§;
   import flash.events.Event;
   
   public class §7!B§ extends §@<§
   {
      
      public static const STATE_NAME:String = "tournamentCutscenePlain";
       
      
      public function §7!B§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "tournamentCutscenePlain")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function end() : void
      {
         if(§;t§)
         {
            §;t§.removeEventListener(Event.COMPLETE,§@"x§);
            §;t§.removeEventListener(Event.CANCEL,onCutSceneNotAvailable);
         }
         if(§&#T§ && §&#T§.cutSceneType == §=$7§.§#d§)
         {
            §#!$§.§!"Q§ = §7!B§.STATE_NAME;
            §3#§(getLevelSelectionState());
         }
         else if(§&#T§ && §&#T§.cutSceneType == §=$7§.§3"C§)
         {
            §3#§(§[#t§.STATE_NAME);
         }
         else
         {
            §#!$§.§!"Q§ = §@<§.STATE_NAME;
            §3#§(§ !8§.STATE_NAME);
         }
      }
      
      override protected function getCutSceneName() : String
      {
         var _loc1_:String = mLevelManager.currentLevel;
         var _loc2_:String = mLevelManager.getCurrentEpisodeModel().getCutScene(_loc1_ + "-OUTRO");
         if(!_loc2_)
         {
            _loc2_ = mLevelManager.getCurrentEpisodeModel().getCutScene(_loc1_ + "-INTRO");
         }
         return _loc2_;
      }
   }
}
