package §!!t§
{
   import §"$=§.§'![§;
   import §3"G§.§16§;
   import §3=§.§1U§;
   import §3=§.§8$8§;
   import §6Q§.§,!,§;
   import flash.events.Event;
   
   public class § !!§ extends §1!M§
   {
      
      public static const STATE_NAME:String = "tournamentCutscenePlain";
       
      
      public function § !!§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "tournamentCutscenePlain")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function end() : void
      {
         if(§1#>§)
         {
            §1#>§.removeEventListener(Event.COMPLETE,§5#R§);
            §1#>§.removeEventListener(Event.CANCEL,onCutSceneNotAvailable);
         }
         if(§'!5§ && §'!5§.cutSceneType == §,!,§.§9M§)
         {
            §8$8§.§[">§ = § !!§.STATE_NAME;
            §%D§(getLevelSelectionState());
         }
         else if(§'!5§ && §'!5§.cutSceneType == §,!,§.§^!"§)
         {
            §%D§(§1U§.STATE_NAME);
         }
         else
         {
            §8$8§.§[">§ = §1!M§.STATE_NAME;
            §%D§(§'8§.STATE_NAME);
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
