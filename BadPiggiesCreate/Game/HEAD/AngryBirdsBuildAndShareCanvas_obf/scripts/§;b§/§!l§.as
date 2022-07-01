package §;b§
{
   import §&!<§.§]!M§;
   import §05§.§?s§;
   import §@y§.§0=§;
   import §^U§.§4!T§;
   
   public class §!l§ extends §4!T§
   {
      
      public static const §%!Q§:String = "PauseStateEditor";
       
      
      public function §!l§(param1:Boolean = false, param2:String = "PauseStateEditor")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§.init(§]!M§.§"!V§.Views.View_LevelPauseEditor[0]);
      }
      
      override protected function getPlayState() : String
      {
         return StateLevelEditorTestPlay.§%!Q§;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         switch(param2)
         {
            case "MENU":
               §@"0§.§%P§(StateLevelEditor.§%!Q§);
               mNextState = §@"0§.§%!Q§;
               break;
            case "FULLSCREEN_BUTTON":
               §?s§.doJsCall("onFullscreenToggle");
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
