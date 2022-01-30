package §7N§
{
   import §%B§.§^k§;
   import §,r§.§2!_§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§<!w§;
   
   public class §]",§ extends §2!_§
   {
      
      public static const §8n§:String = "LevelEndEditorFailState";
       
      
      public function §]",§(param1:Boolean = false, param2:String = "LevelEndEditorFailState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_LevelEndFailEditor[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §@!x§.§8U§(StateLevelEditorTestPlay.§8n§);
               mNextState = §@!x§.§8n§;
               break;
            case "MENU":
               §^k§.§3,§();
               §@!x§.§8U§(StateLevelEditor.§8n§);
               mNextState = §@!x§.§8n§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
