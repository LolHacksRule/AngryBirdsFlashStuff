package §8"X§
{
   import §&$!§.§+#!§;
   import §0=§.§+$=§;
   import §94§.§7!c§;
   import §94§.§@"X§;
   import §>"c§.§"#k§;
   import §@#§.§^#Q§;
   import flash.events.Event;
   
   public class §@!x§ extends §"#k§
   {
      
      public static const STATE_NAME:String = "tournamentCutscenePlain";
       
      
      public function §@!x§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "tournamentCutscenePlain")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function end() : void
      {
         if(§#!<§)
         {
            §#!<§.removeEventListener(Event.COMPLETE,§@"x§);
            §#!<§.removeEventListener(Event.CANCEL,onCutSceneNotAvailable);
         }
         if(§`"3§ && §`"3§.cutSceneType == §+$=§.§!$#§)
         {
            §7!c§.§<r§ = §@!x§.STATE_NAME;
            §5"p§(getLevelSelectionState());
         }
         else if(§`"3§ && §`"3§.cutSceneType == §+$=§.§?<§)
         {
            §5"p§(§@"X§.STATE_NAME);
         }
         else
         {
            §7!c§.§<r§ = §1!a§.STATE_NAME;
            §5"p§(§^!E§.STATE_NAME);
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
