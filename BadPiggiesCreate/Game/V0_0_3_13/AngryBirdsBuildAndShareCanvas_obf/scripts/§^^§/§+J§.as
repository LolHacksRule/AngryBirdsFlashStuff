package §^^§
{
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §2x§.§<!`§;
   import §4!j§.§0p§;
   import §>Z§.§5;§;
   
   public class §+J§ extends §<!`§
   {
      
      public static const §>H§:String = "LevelEndEditorFailState";
       
      
      public function §+J§(param1:Boolean = false, param2:String = "LevelEndEditorFailState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_LevelEndFailEditor[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §1§.§+!u§(StateLevelEditorTestPlay.§>H§);
               mNextState = §1§.§>H§;
               break;
            case "MENU":
               §5;§.§8X§();
               §1§.§+!u§(StateLevelEditor.§>H§);
               mNextState = §1§.§>H§;
               break;
            default:
               super.uiInteractionHandler(param1,param2,param3);
         }
      }
   }
}
