package §[#v§
{
   import § #_§.§?!>§;
   import §+_§.§=$C§;
   import §?o§.§4#?§;
   import §^1§.§+!Y§;
   import §^1§.§;O§;
   import flash.events.Event;
   
   public class §0!n§ extends §["!§
   {
      
      public static const STATE_NAME:String = "tournamentCutscenePlain";
       
      
      public function §0!n§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "tournamentCutscenePlain")
      {
         super(param1,param2,param3,param4);
      }
      
      override protected function end() : void
      {
         if(§4!g§)
         {
            §4!g§.removeEventListener(Event.COMPLETE,§2#l§);
            §4!g§.removeEventListener(Event.CANCEL,onCutSceneNotAvailable);
         }
         if(§&y§ && §&y§.cutSceneType == §=$C§.§6"<§)
         {
            §;O§.§+#J§ = §0!n§.STATE_NAME;
            §%!?§(getLevelSelectionState());
         }
         else if(§&y§ && §&y§.cutSceneType == §=$C§.§,"b§)
         {
            §%!?§(§+!Y§.STATE_NAME);
         }
         else
         {
            §;O§.§+#J§ = §["!§.STATE_NAME;
            §%!?§(§4e§.STATE_NAME);
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
