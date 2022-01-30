package §=;§
{
   import §&!&§.§7!8§;
   import §&"&§.§8!"§;
   import §9!#§.§#!R§;
   import §<Z§.§"!f§;
   
   public class §@!h§ extends §#!R§
   {
      
      public static const §8G§:String = "PauseStateEditor";
       
      
      public function §@!h§(param1:Boolean = false, param2:String = "PauseStateEditor")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;i§.init(§"!f§.§%!1§.Views.View_LevelPauseEditor[0]);
      }
      
      override protected function getPlayState() : String
      {
         return StateLevelEditorTestPlay.§8G§;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         switch(param2)
         {
            case "MENU":
               §=!"§.§2!2§(StateLevelEditor.§8G§);
               mNextState = §=!"§.§8G§;
               break;
            case "FULLSCREEN_BUTTON":
               §8!"§.doJsCall("onFullscreenToggle");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
