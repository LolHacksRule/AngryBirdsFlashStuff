package § "@§
{
   import §%_§.§4m§;
   import §'!A§.§-!S§;
   import §0![§.§@l§;
   import §1"2§.§`7§;
   
   public class §%!x§ extends §@l§
   {
      
      public static const §'=§:String = "PauseStateEditor";
       
      
      public function §%!x§(param1:Boolean = false, param2:String = "PauseStateEditor")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?E§.init(§`7§.§>"?§.Views.View_LevelPauseEditor[0]);
      }
      
      override protected function getPlayState() : String
      {
         return StateLevelEditorTestPlay.§'=§;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         switch(param2)
         {
            case "MENU":
               §%!3§.§4[§(StateLevelEditor.§'=§);
               mNextState = §%!3§.§'=§;
               break;
            case "FULLSCREEN_BUTTON":
               §4m§.doJsCall("onFullscreenToggle");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
