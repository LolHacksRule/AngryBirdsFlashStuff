package §9#B§
{
   import §"!@§.§ !K§;
   import §"!@§.§1S§;
   import §5P§.§""C§;
   import §;$-§.§^#;§;
   import §;$3§.§8=§;
   import flash.events.Event;
   
   public class §0#I§ extends §3#t§
   {
      
      public static const STATE_NAME:String = "tournamentCutscenePlain";
       
      
      public function §0#I§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "tournamentCutscenePlain")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function end() : void
      {
         if(§@!!§)
         {
            §@!!§.removeEventListener(Event.COMPLETE,§8![§);
            §@!!§.removeEventListener(Event.CANCEL,onCutSceneNotAvailable);
         }
         if(§'n§ && §'n§.cutSceneType == §^#;§.§3"U§)
         {
            §1S§.§!!d§ = §0#I§.STATE_NAME;
            §1"h§(getLevelSelectionState());
         }
         else if(§'n§ && §'n§.cutSceneType == §^#;§.§0!R§)
         {
            §1"h§(§ !K§.STATE_NAME);
         }
         else
         {
            §1S§.§!!d§ = §3#t§.STATE_NAME;
            §1"h§(§=!L§.STATE_NAME);
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
