package §@!i§
{
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §1!F§.§>P§;
   
   public class §[!_§ extends §>P§
   {
      
      public static const STATE_NAME:String = "PauseStateEditor";
       
      
      public function §[!_§(param1:Boolean = false, param2:String = "PauseStateEditor")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelPauseEditor[0]);
      }
      
      override protected function getPlayState() : String
      {
         return StateLevelEditorTestPlay.STATE_NAME;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "MENU":
               §@!n§.§!=§(StateLevelEditor.STATE_NAME);
               mNextState = §@!n§.STATE_NAME;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
