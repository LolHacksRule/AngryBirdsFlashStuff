package §3+§
{
   import § !j§.§4#c§;
   import §,"v§.§;"n§;
   import §2";§.§'#J§;
   import §2";§.§9§;
   import §`"0§.§'! §;
   import flash.events.Event;
   
   public class §#"b§ extends §7#t§
   {
      
      public static const STATE_NAME:String = "tournamentCutscenePlain";
       
      
      public function §#"b§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "tournamentCutscenePlain")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function end() : void
      {
         if(§<#`§)
         {
            §<#`§.removeEventListener(Event.COMPLETE,§9"R§);
            §<#`§.removeEventListener(Event.CANCEL,onCutSceneNotAvailable);
         }
         if(§%#d§ && §%#d§.cutSceneType == §'! §.§<"O§)
         {
            §9#7§.§>#y§ = §#"b§.STATE_NAME;
            §1!L§(getLevelSelectionState());
         }
         else if(§%#d§ && §%#d§.cutSceneType == §'! §.§>#<§)
         {
            §1!L§(§'#J§.STATE_NAME);
         }
         else
         {
            §9#7§.§>#y§ = §7#t§.STATE_NAME;
            §1!L§(§;!H§.STATE_NAME);
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
