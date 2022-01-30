package §7N§
{
   import §,r§.§0>§;
   import §=e§.§1!@§;
   import §@">§.§#! §;
   import §^x§.§<!w§;
   
   public class §#!&§ extends §0>§
   {
      
      public static const §8n§:String = "PauseStateEditor";
       
      
      public function §#!&§(param1:Boolean = false, param2:String = "PauseStateEditor")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?F§.init(§#! §.§5!;§.Views.View_LevelPauseEditor[0]);
      }
      
      override protected function getPlayState() : String
      {
         return StateLevelEditorTestPlay.§8n§;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         switch(param2)
         {
            case "MENU":
               §@!x§.§8U§(StateLevelEditor.§8n§);
               mNextState = §@!x§.§8n§;
               break;
            case "FULLSCREEN_BUTTON":
               §1!@§.doJsCall("onFullscreenToggle");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
