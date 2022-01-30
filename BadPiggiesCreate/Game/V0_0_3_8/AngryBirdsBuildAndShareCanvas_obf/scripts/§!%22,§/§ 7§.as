package §!",§
{
   import §-P§.§1""§;
   import §6`§.§?!7§;
   import §9!7§.§#p§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §`%§.§8!0§;
   
   public class § 7§ extends §1""§
   {
      
      public static const §#!w§:String = "LevelEndStateEditor";
       
      
      public function § 7§(param1:Boolean = false, param2:String = "LevelEndStateEditor")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_LevelEndEditor[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §2!o§ = §8!0§.§?2§.§2!H§.§]R§() > 0 && §8!0§.§?2§.§2!H§.§5J§() > 0;
         mNextState = StateLevelEditor.§#!w§;
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
