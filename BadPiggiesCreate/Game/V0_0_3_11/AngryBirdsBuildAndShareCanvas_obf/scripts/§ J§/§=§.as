package § J§
{
   import §""6§.§!"1§;
   import §+!d§.§6=§;
   import §,Q§.§="2§;
   import §;"$§.§8!O§;
   
   public class §=§ extends §!"1§
   {
      
      public static const §^z§:String = "PauseStateEditor";
       
      
      public function §=§(param1:Boolean = false, param2:String = "PauseStateEditor")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%""§.init(§8!O§.§'!J§.Views.View_LevelPauseEditor[0]);
      }
      
      override protected function getPlayState() : String
      {
         return StateLevelEditorTestPlay.§^z§;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         switch(param2)
         {
            case "MENU":
               §6"6§.§0!f§(StateLevelEditor.§^z§);
               mNextState = §6"6§.§^z§;
               break;
            case "FULLSCREEN_BUTTON":
               §="2§.doJsCall("onFullscreenToggle");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
