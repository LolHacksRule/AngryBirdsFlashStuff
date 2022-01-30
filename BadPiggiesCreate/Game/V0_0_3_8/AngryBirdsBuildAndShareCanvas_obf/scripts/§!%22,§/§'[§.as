package §!",§
{
   import §!!T§.§"!S§;
   import §-P§.§"c§;
   import §9!7§.§#p§;
   import §?!V§.§"a§;
   
   public class §'[§ extends §"c§
   {
      
      public static const §#!w§:String = "PauseStateEditor";
       
      
      public function §'[§(param1:Boolean = false, param2:String = "PauseStateEditor")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§.init(§"a§.§-!g§.Views.View_LevelPauseEditor[0]);
      }
      
      override protected function getPlayState() : String
      {
         return StateLevelEditorTestPlay.§#!w§;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         switch(param2)
         {
            case "MENU":
               §"F§.§%!,§(StateLevelEditor.§#!w§);
               mNextState = §"F§.§#!w§;
               break;
            case "FULLSCREEN_BUTTON":
               §"!S§.doJsCall("onFullscreenToggle");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
