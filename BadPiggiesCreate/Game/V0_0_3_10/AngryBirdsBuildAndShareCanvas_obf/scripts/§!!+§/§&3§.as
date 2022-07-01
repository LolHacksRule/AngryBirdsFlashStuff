package §!!+§
{
   import §,i§.§#!5§;
   import §4!t§.§1!=§;
   import §8"'§.§?!`§;
   import §<8§.§7!n§;
   
   public class §&3§ extends §#!5§
   {
      
      public static const §]"2§:String = "PauseStateEditor";
       
      
      public function §&3§(param1:Boolean = false, param2:String = "PauseStateEditor")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'K§.init(§1!=§.§8X§.Views.View_LevelPauseEditor[0]);
      }
      
      override protected function getPlayState() : String
      {
         return StateLevelEditorTestPlay.§]"2§;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         switch(param2)
         {
            case "MENU":
               §4!l§.§"l§(StateLevelEditor.§]"2§);
               mNextState = §4!l§.§]"2§;
               break;
            case "FULLSCREEN_BUTTON":
               §?!`§.doJsCall("onFullscreenToggle");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
