package § "@§
{
   import §'!A§.§-!S§;
   import §-!n§.§5!U§;
   import §0![§.§7!Y§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   
   public class §;q§ extends §7!Y§
   {
      
      public static const §'=§:String = "LevelEndEditorFailState";
       
      
      public function §;q§(param1:Boolean = false, param2:String = "LevelEndEditorFailState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_LevelEndFailEditor[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §%!3§.§4[§(StateLevelEditorTestPlay.§'=§);
               mNextState = §%!3§.§'=§;
               break;
            case "MENU":
               §5!U§.§9&§();
               §%!3§.§4[§(StateLevelEditor.§'=§);
               mNextState = §%!3§.§'=§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
