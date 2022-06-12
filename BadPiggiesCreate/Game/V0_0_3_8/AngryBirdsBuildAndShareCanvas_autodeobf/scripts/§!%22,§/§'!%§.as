package §!",§
{
   import §-P§.§1!I§;
   import §6`§.§?!7§;
   import §9!7§.§#p§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   
   public class §'!%§ extends §1!I§
   {
      
      public static const §#!w§:String = "LevelEndEditorFailState";
       
      
      public function §'!%§(param1:Boolean = false, param2:String = "LevelEndEditorFailState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_LevelEndFailEditor[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §"F§.§%!,§(StateLevelEditorTestPlay.§#!w§);
               mNextState = §"F§.§#!w§;
               break;
            case "MENU":
               §?!7§.§@"!§();
               §"F§.§%!,§(StateLevelEditor.§#!w§);
               mNextState = §"F§.§#!w§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
