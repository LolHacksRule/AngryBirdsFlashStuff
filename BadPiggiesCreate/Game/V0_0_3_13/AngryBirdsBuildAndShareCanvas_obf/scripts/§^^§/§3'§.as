package §^^§
{
   import §#!8§.§&!'§;
   import §0!C§.§,!h§;
   import §2x§.§7o§;
   import §4!j§.§0p§;
   
   public class §3'§ extends §7o§
   {
      
      public static const §>H§:String = "PauseStateEditor";
       
      
      public function §3'§(param1:Boolean = false, param2:String = "PauseStateEditor")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3?§.init(§,!h§.§`C§.Views.View_LevelPauseEditor[0]);
      }
      
      override protected function getPlayState() : String
      {
         return StateLevelEditorTestPlay.§>H§;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         switch(param2)
         {
            case "MENU":
               §1§.§+!u§(StateLevelEditor.§>H§);
               mNextState = §1§.§>H§;
               break;
            case "FULLSCREEN_BUTTON":
               §&!'§.doJsCall("onFullscreenToggle");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
