package §@!i§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §1!F§.§2!i§;
   import §1?§.§+!§;
   
   public class §0!§ extends §2!i§
   {
      
      public static const STATE_NAME:String = "LevelEndEditorFailState";
       
      
      public function §0!§(param1:Boolean = false, param2:String = "LevelEndEditorFailState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelEndFailEditor[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §@!n§.§!=§(StateLevelEditorTestPlay.STATE_NAME);
               mNextState = §@!n§.STATE_NAME;
               break;
            case "MENU":
               §+!§.§'!Q§();
               §@!n§.§!=§(StateLevelEditor.STATE_NAME);
               mNextState = §@!n§.STATE_NAME;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
