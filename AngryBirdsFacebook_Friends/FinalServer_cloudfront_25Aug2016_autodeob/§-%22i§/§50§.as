package §-"i§
{
   import §#v§.§#!?§;
   import §'U§.§]#[§;
   import §+!u§.§#"t§;
   import §,!=§.§"$6§;
   import §,!=§.§<!B§;
   import §3!a§.§#!-§;
   import flash.events.Event;
   
   public class §50§ extends §#"t§
   {
      
      public static const STATE_NAME:String = "tournamentCutscenePlain";
       
      
      public function §50§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "tournamentCutscenePlain")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function end() : void
      {
         if(§=#j§)
         {
            §=#j§.removeEventListener(Event.COMPLETE,§##9§);
            §=#j§.removeEventListener(Event.CANCEL,onCutSceneNotAvailable);
         }
         if(§>#>§ && §>#>§.cutSceneType == §#!-§.§^""§)
         {
            §<!B§.§+R§ = §50§.STATE_NAME;
            §7P§(getLevelSelectionState());
         }
         else if(§>#>§ && §>#>§.cutSceneType == §#!-§.§,#V§)
         {
            §7P§(§"$6§.STATE_NAME);
         }
         else
         {
            §<!B§.§+R§ = §5!o§.STATE_NAME;
            §7P§(§%!'§.STATE_NAME);
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
